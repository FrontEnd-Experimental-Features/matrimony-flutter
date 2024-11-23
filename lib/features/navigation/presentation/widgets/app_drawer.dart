import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'drawer_sections/discover_section.dart';
import 'drawer_sections/settings_section.dart';
import 'drawer_sections/footer_section.dart';
import 'drawer_sections/logout_section.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.pink,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 30),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Connect2Marriage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ID: MAT${DateTime.now().year}1234',
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const DiscoverSection(),
          const Divider(),
          const SettingsSection(),
          const LogoutSection(),
          const FooterSection(),
        ],
      ),
    );
  }
}