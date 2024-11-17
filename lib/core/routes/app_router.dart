import 'package:auto_route/auto_route.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/chats/presentation/screens/chats_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/inbox/presentation/screens/inbox_screen.dart';
import '../../features/matches/presentation/screens/matches_screen.dart';
import '../../features/navigation/presentation/screens/main_screen.dart';
import '../../features/profile/presentation/screens/profile_preview_screen.dart';
import '../../features/profile/presentation/screens/profile_edit_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/main',
          page: MainRoute.page,
          children: [
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'matches', page: MatchesRoute.page),
            AutoRoute(path: 'inbox', page: InboxRoute.page),
            AutoRoute(path: 'chats', page: ChatsRoute.page),
          ],
        ),
        AutoRoute(
          path: '/profile-preview',
          page: ProfilePreviewRoute.page,
        ),
        AutoRoute(
          path: '/profile-edit',
          page: ProfileEditRoute.page,
        ),
      ];
}