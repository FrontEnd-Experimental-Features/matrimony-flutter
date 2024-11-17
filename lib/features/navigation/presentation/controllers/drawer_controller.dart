import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/interfaces/drawer_section.dart';
import '../widgets/drawer_sections/profile_header_section.dart';
import '../widgets/drawer_sections/profile_management_section.dart';
import '../widgets/drawer_sections/discover_section.dart';
import '../widgets/drawer_sections/settings_section.dart';
import '../widgets/drawer_sections/footer_section.dart';

final drawerControllerProvider = Provider((ref) => DrawerController());

class DrawerController {
  List<DrawerSection> getSections() {
    return [
      ProfileHeaderSection(),
      ProfileManagementSection(),
      DiscoverSection(),
      SettingsSection(),
      FooterSection(),
    ];
  }

  Future<void> handleNavigation(String route) async {
    // TODO: Implement navigation logic
  }
} 