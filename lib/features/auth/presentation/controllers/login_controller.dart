import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthState {
  final bool isLoading;
  final String? error;
  final AuthUser? user;
  final bool isLoggedIn;

  const AuthState({
    this.isLoading = false,
    this.error,
    this.user,
    this.isLoggedIn = false,
  });

  AuthState copyWith({
    bool? isLoading,
    String? error,
    AuthUser? user,
    bool? isLoggedIn,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      user: user ?? this.user,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }
}

class LoginController extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  LoginController(this._authRepository) : super(const AuthState()) {
    checkAuthStatus();
  }

  Future<void> checkAuthStatus() async {
    final result = await _authRepository.isLoggedIn();
    result.fold(
      (failure) => state = state.copyWith(isLoggedIn: false),
      (isLoggedIn) => state = state.copyWith(isLoggedIn: isLoggedIn),
    );

    if (state.isLoggedIn) {
      final userResult = await _authRepository.getCurrentUser();
      userResult.fold(
        (failure) => state = state.copyWith(error: failure.message),
        (user) => state = state.copyWith(user: user),
      );
    }
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _authRepository.login(email, password);
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.message,
        isLoggedIn: false,
      ),
      (user) => state = state.copyWith(
        isLoading: false,
        user: user,
        error: null,
        isLoggedIn: true,
      ),
    );
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true);

    final result = await _authRepository.logout();
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.message,
      ),
      (_) => state = state.copyWith(
        isLoading: false,
        user: null,
        error: null,
        isLoggedIn: false,
      ),
    );
  }
}
