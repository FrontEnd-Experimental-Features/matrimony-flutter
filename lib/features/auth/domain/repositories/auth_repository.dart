import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entities/auth_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthUser>> login(String email, String password);
  Future<Either<Failure, Unit>> logout();
  Future<Either<Failure, AuthUser>> getCurrentUser();
  Future<Either<Failure, bool>> isLoggedIn();
}
