import 'package:flutter/material.dart';
import '../../../domain/interfaces/drawer_section.dart';

class ProfileHeaderSection implements DrawerSection {
  @override
  String get sectionTitle => 'Profile';

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.pink,
      ),
      currentAccountPicture: const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.person, size: 50),
      ),
      accountName: const Text('User Name'),
      accountEmail: Text('ID: MAT${DateTime.now().year}1234'),
    );
  }
} 