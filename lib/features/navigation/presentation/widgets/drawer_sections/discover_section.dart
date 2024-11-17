import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({super.key});

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
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Discover Your Matches',
        style: TextStyle(
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
          onTap: () => context.router.pushNamed('/matches'),
        ),
        ListTile(
          leading: const Icon(Icons.mail),
          title: const Text('Inbox'),
          onTap: () => context.router.pushNamed('/inbox'),
        ),
        ListTile(
          leading: const Icon(Icons.chat),
          title: const Text('Chats'),
          onTap: () => context.router.pushNamed('/chats'),
        ),
      ],
    );
  }
}