import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthUser? _currentUser;

  @override
  Future<Either<Failure, AuthUser>> login(String email, String password) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 1));

      // Mock authentication logic
      if (email == 'test@example.com' && password == 'password123') {
        _currentUser = const AuthUser(
          id: '1',
          email: 'test@example.com',
          name: 'Test User',
          photoUrl: null,
          isEmailVerified: false,
        );
        return Right(_currentUser!);
      }

      return const Left(AuthenticationFailure('Invalid credentials'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      _currentUser = null;
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthUser>> getCurrentUser() async {
    try {
      if (_currentUser != null) {
        return Right(_currentUser!);
      }
      return const Left(AuthenticationFailure('No user logged in'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      return Right(_currentUser != null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
