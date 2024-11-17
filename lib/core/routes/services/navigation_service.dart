import 'package:auto_route/auto_route.dart';

abstract class NavigationService {
  Future<void> navigateTo(String route);
  void goBack();
}

class AutoRouteNavigationService implements NavigationService {
  final StackRouter _router;

  AutoRouteNavigationService(this._router);

  @override
  Future<void> navigateTo(String route) async {
    await _router.pushNamed(route);
  }

  @override
  void goBack() {
    _router.back();
  }
}
