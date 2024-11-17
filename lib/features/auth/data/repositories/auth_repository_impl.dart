import 'package:dio/dio.dart';
import '../../domain/entities/login_credentials.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../datasources/auth_local_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<String> login(LoginCredentials credentials) async {
    try {
      final token = await _remoteDataSource.login(credentials);
      await _localDataSource.saveToken(token);
      return token;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<void> logout() async {
    await _localDataSource.deleteToken();
  }

  @override
  Future<bool> isLoggedIn() async {
    final token = await _localDataSource.getToken();
    return token != null;
  }

  Exception _handleDioError(DioException e) {
    switch (e.response?.statusCode) {
      case 401:
        return Exception('Invalid credentials');
      case 404:
        return Exception('User not found');
      default:
        return Exception('Network error');
    }
  }
} 