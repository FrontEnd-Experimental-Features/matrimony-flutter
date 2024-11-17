import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/drawer_controller.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drawerSections = ref.watch(drawerControllerProvider).getSections();

    return Drawer(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: drawerSections.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => drawerSections[index].build(context),
      ),
    );
  }
} 