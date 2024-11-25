import 'dart:convert';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/graphql/graphql_client.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class GraphQLAuthRepository implements AuthRepository {
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

  static const String _getCurrentUserQuery = r'''
    query GetCurrentUser {
      currentUser {
        id
        userName
        dateOfBirth
        gender
        isVerifiedFlag
      }
    }
  ''';

  static const String _logoutMutation = r'''
    mutation Signout {
      signout {
        success
      }
    }
  ''';

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

      final userDetailsStr = result.data?['authenticate']['authResult']['userDetails'] as String?;
      if (userDetailsStr == null) {
        return Left(ServerFailure('Invalid response format'));
      }

      try {
        final userDetails = json.decode(userDetailsStr) as Map<String, dynamic>;
        final jwtToken = userDetails['jwtToken'] as String?;
        
        if (jwtToken == null) {
          return Left(ServerFailure('JWT token not found in response'));
        }

        // Store the JWT token
        await GraphQLConfig.setAuthToken(jwtToken);

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
      // Execute signout mutation first to properly end the session
      final result = await _client.mutate(
        MutationOptions(
          document: gql(_logoutMutation),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );

      // Even if the server call fails, we should clear local state
      // to ensure the user can log out locally
      await GraphQLConfig.clearAuthToken();
      await _client.resetStore();

      if (result.hasException) {
        print('Logout warning: ${result.exception}'); // Debug log
        // Don't return error since we've cleared local state
      }

      return const Right(unit);
    } catch (e) {
      print('Logout exception: $e'); // Debug log
      // Still return success if we cleared local state
      return const Right(unit);
    }
  }

  @override
  Future<Either<Failure, AuthUser>> getCurrentUser() async {
    try {
      final result = await _client.query(
        QueryOptions(
          document: gql(_getCurrentUserQuery),
        ),
      );

      if (result.hasException) {
        return const Left(AuthenticationFailure('No user logged in'));
      }

      final userData = result.data?['currentUser'];
      if (userData == null) {
        return const Left(AuthenticationFailure('No user logged in'));
      }

      final user = AuthUser(
        id: userData['id'],
        userName: userData['userName'],
        dateOfBirth: userData['dateOfBirth'],
        gender: userData['gender'],
        isVerifiedFlag: userData['isVerifiedFlag'],
      );

      return Right(user);
    } catch (e) {
      return const Left(ServerFailure('Failed to get current user'));
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
