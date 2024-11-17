import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../routes/services/navigation_service.dart';
import '../routes/app_router.dart';
import '../../features/auth/data/repositories/mock_auth_repository.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';

final appRouterProvider = Provider((ref) => AppRouter());

final navigationServiceProvider = Provider<NavigationService>((ref) {
  final router = ref.watch(appRouterProvider);
  return AutoRouteNavigationService(router);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return MockAuthRepository();
});

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository);
});
