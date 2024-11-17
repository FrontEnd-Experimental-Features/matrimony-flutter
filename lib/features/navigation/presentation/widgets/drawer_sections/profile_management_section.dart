import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../domain/interfaces/drawer_section.dart';

class ProfileManagementSection implements DrawerSection {
  @override
  String get sectionTitle => 'Profile Management';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(),
        _buildProfileOptions(context),
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

  Widget _buildProfileOptions(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('View and Edit your Profile'),
          onTap: () => _handleNavigation(context, 'editProfile'),
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Download and share Profile'),
          onTap: () => _handleNavigation(context, 'shareProfile'),
        ),
      ],
    );
  }

  void _handleNavigation(BuildContext context, String route) {
    if (route == 'editProfile') {
      context.router.pushNamed('/profile-preview');
    }
    // Handle other routes...
  }
} 