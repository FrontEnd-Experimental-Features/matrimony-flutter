import 'package:flutter/material.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/models/user_model.dart';

class LoginController extends ChangeNotifier {
  final AuthRepository _authRepository;
  bool _isLoading = false;
  String? _error;
  UserModel? _user;

  LoginController(this._authRepository);

  bool get isLoading => _isLoading;
  String? get error => _error;
  UserModel? get user => _user;

  Future<bool> login(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _user = await _authRepository.login(email, password);
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    _user = null;
    notifyListeners();
  }
}
