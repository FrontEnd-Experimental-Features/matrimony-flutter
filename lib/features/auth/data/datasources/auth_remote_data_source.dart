import 'package:dio/dio.dart';
import '../../domain/entities/login_credentials.dart';

abstract class AuthRemoteDataSource {
  Future<String> login(LoginCredentials credentials);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;
  final String _baseUrl;

  AuthRemoteDataSourceImpl(this._dio, this._baseUrl);

  @override
  Future<String> login(LoginCredentials credentials) async {
    final response = await _dio.post(
      '$_baseUrl/auth/login',
      data: credentials.toJson(),
    );
    return response.data['token'];
  }
} 