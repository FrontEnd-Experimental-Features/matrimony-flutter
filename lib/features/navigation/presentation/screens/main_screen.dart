import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/routes/app_router.dart';
import '../widgets/app_drawer.dart';
import '../../../../features/auth/presentation/controllers/auth_controller.dart';

@RoutePage()
class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen for auth state changes
    ref.listen<AuthState>(
      authControllerProvider,
      (previous, current) {
        if (current.user == null && !current.isLoading) {
          context.router.replaceAll([const LoginRoute()]);
        }
      },
    );

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        MatchesRoute(),
        InboxRoute(),
        ChatsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(_getTitle(tabsRouter.activeIndex)),
            centerTitle: true,
          ),
          drawer: const AppDrawer(),
          body: child,
          bottomNavigationBar: _buildBottomNav(tabsRouter),
        );
      },
    );
  }

  Widget _buildBottomNav(TabsRouter tabsRouter) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Matches',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
      ],
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Matches';
      case 2:
        return 'Inbox';
      case 3:
        return 'Chats';
      default:
        return 'Matrimony App';
    }
  }
}