import 'package:flutter/material.dart';
import '../../../domain/interfaces/drawer_section.dart';

class SettingsSection implements DrawerSection {
  @override
  String get sectionTitle => 'Options & Settings';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(),
        _buildSettingsOptions(context),
      ],
    );
  }

  Widget _buildSectionHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        sectionTitle,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildSettingsOptions(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.person_search),
          title: const Text('Partner Preferences'),
          onTap: () => _handleNavigation(context, 'partnerPreferences'),
        ),
        ListTile(
          leading: const Icon(Icons.filter_list),
          title: const Text('Contact Filters'),
          onTap: () => _handleNavigation(context, 'contactFilters'),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Account Settings'),
          onTap: () => _handleNavigation(context, 'accountSettings'),
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Help & Support'),
          onTap: () => _handleNavigation(context, 'helpSupport'),
        ),
        ListTile(
          leading: const Icon(Icons.security),
          title: const Text('Be Safe Online'),
          onTap: () => _handleNavigation(context, 'safetyGuidelines'),
        ),
      ],
    );
  }

  void _handleNavigation(BuildContext context, String route) {
    // TODO: Implement navigation
  }
} 