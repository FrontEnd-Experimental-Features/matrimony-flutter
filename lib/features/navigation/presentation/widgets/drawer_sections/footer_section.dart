import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        ListTile(
          dense: true,
          title: const Text(
            'Terms and Conditions',
            style: TextStyle(fontSize: 12),
          ),
          onTap: () {
            // TODO: Implement terms and conditions navigation
            context.router.pop(); // Close drawer
          },
        ),
        ListTile(
          dense: true,
          title: const Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 12),
          ),
          onTap: () {
            // TODO: Implement privacy policy navigation
            context.router.pop(); // Close drawer
          },
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            ' 2024 Matrimony App. All rights reserved.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}