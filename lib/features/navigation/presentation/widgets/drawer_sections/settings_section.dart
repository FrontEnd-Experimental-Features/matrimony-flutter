import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsSection extends ConsumerWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Settings',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings, 
            color: Theme.of(context).primaryColor.withOpacity(0.8),
          ),
          title: Text('Account Settings',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {
            // TODO: Implement settings navigation
          },
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip,
            color: Theme.of(context).primaryColor.withOpacity(0.8),
          ),
          title: Text('Privacy',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {
            // TODO: Implement privacy settings
          },
        ),
        ListTile(
          leading: Icon(Icons.notifications,
            color: Theme.of(context).primaryColor.withOpacity(0.8),
          ),
          title: Text('Notifications',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {
            // TODO: Implement notifications settings
          },
        ),
      ],
    );
  }
}
