import 'dart:convert';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/entities/auth_user.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/graphql/graphql_config.dart';
import '../../domain/repositories/auth_repository.dart';

class GraphQLAuthRepository implements AuthRepository {
  static const String _userDetailsKey = 'user_details';
  static const _storage = FlutterSecureStorage();
  final GraphQLClient _client;

  GraphQLAuthRepository(this._client);

  static const String _loginMutation = r'''
    mutation Authenticate($email: String!, $password: String!) {
      authenticate(input: {input: {email: $email, password: $password}}) {
        authResult {
          userDetails
          clientMutationId
        }
      }
    }
  ''';

  static const String _logoutMutation = r'''
    mutation Logout($userId: Int!) {
      logout(input: {input: {userId: $userId, logout: true}}) {
        logoutResult {
          success
          logoutTime
        }
        clientMutationId
      }
    }
  ''';

  Future<void> _storeUserDetails(String userDetailsJson) async {
    await _storage.write(key: _userDetailsKey, value: userDetailsJson);
  }

  Future<Map<String, dynamic>?> _getUserDetails() async {
    final userDetailsJson = await _storage.read(key: _userDetailsKey);
    if (userDetailsJson == null) return null;
    return json.decode(userDetailsJson) as Map<String, dynamic>;
  }

  Future<void> _clearUserDetails() async {
    await _storage.delete(key: _userDetailsKey);
  }

  @override
  Future<Either<Failure, AuthUser>> login(String email, String password) async {
    try {
      final result = await _client.mutate(
        MutationOptions(
          document: gql(_loginMutation),
          variables: {
            'email': email,
            'password': password,
          },
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      if (result.hasException) {
        return Left(ServerFailure(result.exception.toString()));
      }

      final userDetailsStr =
          result.data?['authenticate']['authResult']['userDetails'] as String?;
      if (userDetailsStr == null) {
        return Left(ServerFailure('Invalid response format'));
      }

      try {
        final userDetails = json.decode(userDetailsStr) as Map<String, dynamic>;
        final jwtToken = userDetails['jwtToken'] as String?;

        if (jwtToken == null) {
          return Left(ServerFailure('JWT token not found in response'));
        }

        // Store both JWT token and user details
        await GraphQLConfig.setAuthToken(jwtToken);
        await _storeUserDetails(userDetailsStr);

        // Create AuthUser from response
        return Right(AuthUser.fromJson(userDetails));
      } catch (e) {
        return Left(ServerFailure('Failed to parse user details: $e'));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      // Clear auth token first to prevent JWT validation issues
      await GraphQLConfig.clearAuthToken();

      // Get user ID from stored details before clearing them
      final userDetails = await _getUserDetails();
      final userId = userDetails?['id'] as int?;

      // Clear remaining local state
      await _clearUserDetails();

      // Execute logout mutation
      final result = await _client.mutate(
        MutationOptions(
          document: gql(_logoutMutation),
          variables: {
            'userId': userId ?? 0,
          },
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      // Reset store after mutation
      await _client.resetStore();

      if (result.hasException) {
        print('Logout warning: ${result.exception}');
      } else {
        final logoutTime =
            result.data?['logout']?['logoutResult']?['logoutTime'];
        final success =
            result.data?['logout']?['logoutResult']?['success'] ?? false;
        if (logoutTime != null) {
          print('User logged out at: $logoutTime (Success: $success)');
        }
      }

      return const Right(unit);
    } catch (e) {
      print('Logout exception: $e');
      return const Right(unit);
    }
  }

  @override
  Future<Either<Failure, AuthUser>> getCurrentUser() async {
    try {
      final userDetails = await _getUserDetails();
      if (userDetails == null) {
        return Left(ServerFailure('No user details found'));
      }

      return Right(AuthUser.fromJson(userDetails));
    } catch (e) {
      return Left(ServerFailure('Failed to get current user: $e'));
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      final result = await getCurrentUser();
      return result.fold(
        (failure) => const Right(false),
        (user) => const Right(true),
      );
    } catch (e) {
      return const Left(ServerFailure('Failed to check login status'));
    }
  }
}
