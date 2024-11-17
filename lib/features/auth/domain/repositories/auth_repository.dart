import '../entities/login_credentials.dart';

abstract class AuthRepository {
  Future<String> login(LoginCredentials credentials);
  Future<void> logout();
  Future<bool> isLoggedIn();
} 