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
          const SnackBar(content: Text('Logging out...')),
        );
      }

      // Close the drawer if it's open
      if (Scaffold.of(context).isDrawerOpen) {
        developer.log('Closing drawer');
        Navigator.of(context).pop();
      }

      developer.log('Calling logout on auth controller');
      final success = await ref.read(authControllerProvider.notifier).logout();
      
      if (!success) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Logout failed. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
        return;
      }

      developer.log('Logout successful, attempting navigation');
      if (context.mounted) {
        // Get the router instance
        final router = AutoRouter.of(context);
        
        // Navigate to login and clear the stack
        await router.pushAndPopUntil(
          const LoginRoute(),
          predicate: (_) => false,
        );
        developer.log('Navigation completed');
      }
    } catch (e, stackTrace) {
      developer.log(
        'Error during logout',
        error: e,
        stackTrace: stackTrace,
      );
      
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Logout error: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
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
          onTap: authState.isLoading
              ? null
              : () {
                  showDialog(
                    context: context,
                    barrierDismissible: !authState.isLoading,
                    builder: (dialogContext) => AlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure you want to logout?'),
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
        if (authState.isLoading) const AppLoadingOverlay(),
      ],
    );
  }
}
