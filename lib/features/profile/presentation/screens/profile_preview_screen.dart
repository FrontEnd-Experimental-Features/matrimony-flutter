import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/profile_controller.dart';
import '../widgets/profile_photo_carousel.dart';
import '../widgets/profile_section_card.dart';

@RoutePage()
class ProfilePreviewScreen extends ConsumerWidget {
  const ProfilePreviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Profile Preview'),
        actions: [
          TextButton(
            onPressed: () => context.router.pushNamed('/profile-edit'),
            child: const Text('Edit Profile'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfilePhotoCarousel(),
            _buildProfileSections(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSections(WidgetRef ref) {
    final profileSections = ref.watch(profileControllerProvider);
    
    return profileSections.when(
      data: (sections) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: sections.length,
        itemBuilder: (context, index) => ProfileSectionCard(
          section: sections[index],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
} 