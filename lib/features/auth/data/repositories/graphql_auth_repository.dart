import 'dart:convert';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class GraphQLAuthRepository implements AuthRepository {
  final GraphQLClient _client;

  GraphQLAuthRepository(this._client);

  static const String _loginMutation = r'''
    mutation Login($input: AuthenticateInput!) {
      authenticate(input: $input) {
        authResult {
          userDetails
        }
        clientMutationId
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

  @override
  Future<Either<Failure, AuthUser>> login(String email, String password) async {
    try {
      final result = await _client.mutate(
        MutationOptions(
          document: gql(_loginMutation),
          variables: {
            'input': {
              'input': {
                'email': email,
                'password': password,
              }
            }
          },
        ),
      );

      if (result.hasException) {
        return Left(ServerFailure(result.exception.toString()));
      }

      final userJsonString =
          result.data?['authenticate']?['authResult']?['userDetails'];
      if (userJsonString == null) {
        return Left(ServerFailure('Invalid email or password'));
      }

      // Parse the JSON string into a Map
      final userJson = jsonDecode(userJsonString as String);
      return Right(AuthUser.fromJson(userJson));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    return const Right(unit);
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
