import 'package:auto_route/auto_route.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/chats/presentation/screens/chats_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/inbox/presentation/screens/inbox_screen.dart';
import '../../features/matches/presentation/screens/matches_screen.dart';
import '../../features/navigation/presentation/screens/main_screen.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter() : super();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: '/login',
      page: LoginRoute.page,
    ),
    AutoRoute(
      path: '/signup',
      page: SignupRoute.page,
    ),
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(
          path: '',
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: 'matches',
          page: MatchesRoute.page,
        ),
        AutoRoute(
          path: 'inbox',
          page: InboxRoute.page,
        ),
        AutoRoute(
          path: 'chats',
          page: ChatsRoute.page,
        ),
      ],
    ),
  ];
}
