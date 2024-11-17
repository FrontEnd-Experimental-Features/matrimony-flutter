import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import '../services/navigation_service.dart';
import '../routes/app_router.dart';

final appRouterProvider = Provider<RootStackRouter>((ref) {
  return AppRouter();
});

final navigationServiceProvider = Provider<NavigationService>((ref) {
  final router = ref.watch(appRouterProvider);
  return AutoRouteNavigationService(router as StackRouter);
}); 