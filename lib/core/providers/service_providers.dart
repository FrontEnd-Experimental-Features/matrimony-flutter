import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/navigation_service.dart';
import '../routes/app_router.dart';

final navigationServiceProvider = Provider<NavigationService>((ref) {
  final appRouter = AppRouter();
  return AutoRouteNavigationService(appRouter);
}); 