import 'package:flutter/material.dart';
import '../../../domain/interfaces/drawer_section.dart';

class FooterSection implements DrawerSection {
  @override
  String get sectionTitle => 'Legal';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text(
            'Terms and Conditions',
            style: TextStyle(fontSize: 12),
          ),
          onTap: () => _handleNavigation(context, 'terms'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '© 2024 Matrimony App. All rights reserved.',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  void _handleNavigation(BuildContext context, String route) {
    // TODO: Implement navigation
  }
} 