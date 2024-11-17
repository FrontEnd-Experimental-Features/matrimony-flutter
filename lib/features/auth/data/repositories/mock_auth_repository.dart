import '../../domain/models/user_model.dart';
import '../../domain/repositories/auth_repository.dart';

class MockAuthRepository implements AuthRepository {
  final _fakeUser = UserModel(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
  );

  @override
  Future<UserModel?> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    
    if (email == 'test@example.com' && password == 'password123') {
      return _fakeUser;
    }
    throw Exception('Invalid credentials');
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
  }
}
