import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class MockAuthRepository implements AuthRepository {
  AuthUser? _currentUser;
  
  final _fakeUser = const AuthUser(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
    photoUrl: null,
    isEmailVerified: false,
  );

  @override
  Future<Either<Failure, AuthUser>> login(String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
      
      if (email == 'test@example.com' && password == 'password123') {
        _currentUser = _fakeUser;
        return Right(_fakeUser);
      }
      return const Left(AuthenticationFailure('Invalid email or password'));
    } catch (e) {
      return const Left(ServerFailure('An unexpected error occurred'));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
      _currentUser = null;
      return const Right(unit);
    } catch (e) {
      return const Left(ServerFailure('Failed to logout'));
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
      return const Left(ServerFailure('Failed to get current user'));
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      return Right(_currentUser != null);
    } catch (e) {
      return const Left(ServerFailure('Failed to check login status'));
    }
  }
}
