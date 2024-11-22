import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../routes/services/navigation_service.dart';
import '../routes/app_router.dart';
import '../graphql/graphql_client.dart';
import '../../features/auth/data/repositories/graphql_auth_repository.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/presentation/controllers/auth_controller.dart';

final appRouterProvider = Provider((ref) => AppRouter());

final navigationServiceProvider = Provider<NavigationService>((ref) {
  final router = ref.watch(appRouterProvider);
  return AutoRouteNavigationService(router);
});

final graphQLClientProvider = Provider((ref) {
  return GraphQLConfig.initializeClient().value;
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final client = ref.watch(graphQLClientProvider);
  return GraphQLAuthRepository(client);
});

final authControllerProvider = StateNotifierProvider<AuthController, AuthState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository);
});
