import 'package:flutter/material.dart';
import '../../../domain/interfaces/drawer_section.dart';

class DiscoverSection implements DrawerSection {
  @override
  String get sectionTitle => 'Discover Your Matches';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader(),
        _buildDiscoverOptions(context),
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

  Widget _buildDiscoverOptions(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Matches'),
          onTap: () => _handleNavigation(context, 'matches'),
        ),
        ListTile(
          leading: const Icon(Icons.mail),
          title: const Text('Inbox'),
          onTap: () => _handleNavigation(context, 'inbox'),
        ),
        ListTile(
          leading: const Icon(Icons.chat),
          title: const Text('Chats'),
          onTap: () => _handleNavigation(context, 'chats'),
        ),
      ],
    );
  }

  void _handleNavigation(BuildContext context, String route) {
    // TODO: Implement navigation
  }
} 