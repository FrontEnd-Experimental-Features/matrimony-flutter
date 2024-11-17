import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_controller.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    AuthUser? user,
    @Default(false) bool isLoading,
    String? error,
  }) = _AuthState;
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  // TODO: Replace with actual repository implementation
  throw UnimplementedError();
});

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  return AuthController(ref.watch(authRepositoryProvider));
});

class AuthController extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthController(this._authRepository) : super(const AuthState());

  Future<bool> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _authRepository.login(email, password);

    return result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: failure.message,
        );
        return false;
      },
      (user) {
        state = state.copyWith(
          isLoading: false,
          user: user,
          error: null,
        );
        return true;
      },
    );
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _authRepository.logout();

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: failure.message,
        );
      },
      (_) {
        state = state.copyWith(
          isLoading: false,
          user: null,
          error: null,
        );
      },
    );
  }

  Future<void> checkAuthState() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await _authRepository.getCurrentUser();

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          user: null,
        );
      },
      (user) {
        state = state.copyWith(
          isLoading: false,
          user: user,
        );
      },
    );
  }
}
