import 'package:connectme/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'dart:developer' as developer;
import '../../../../../features/auth/presentation/controllers/auth_controller.dart';
import '../../../../../shared/widgets/loading_widget.dart';

class LogoutSection extends ConsumerWidget {
  const LogoutSection({super.key});

  Future<void> _handleLogout(BuildContext context, WidgetRef ref) async {
    try {
      developer.log('Starting logout process');
      
      // Show loading indicator
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Logging out...'),
            duration: Duration(seconds: 2),
          ),
        );
      }

      // Close the drawer if it's open
      if (context.mounted && Scaffold.of(context).isDrawerOpen) {
        developer.log('Closing drawer');
        Navigator.of(context).pop();
      }

      developer.log('Calling logout on auth controller');
      final result = await ref.read(authControllerProvider.notifier).logout();

      if (!result) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to log out. Please try again.'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
            ),
          );
        }
        return;
      }

      developer.log('Logout successful, navigating to login');
      if (context.mounted) {
        // Replace all routes with login route
        final router = AutoRouter.of(context);
        await router.replaceAll([const LoginRoute()]);
      }
    } catch (e) {
      developer.log('Error during logout: $e');
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Error during logout',
              style: TextStyle(color: Colors.red),
            ),
            content: const Text('An error occurred during logout'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);

    return Column(
      children: [
        const Divider(),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.red),
          title: const Text('Logout', style: TextStyle(color: Colors.red)),
          enabled: !authState.isLoading,
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: !authState.isLoading,
              builder: (dialogContext) => AlertDialog(
                title: const Text('Logout'),
                content: const Text('Are you sure you want to log out?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(dialogContext),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                      _handleLogout(context, ref);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    child: const Text('Logout'),
                  ),
                ],
              ),
            );
          },
        ),
        if (authState.isLoading) 
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: AppLoadingOverlay(),
          ),
      ],
    );
  }
}
