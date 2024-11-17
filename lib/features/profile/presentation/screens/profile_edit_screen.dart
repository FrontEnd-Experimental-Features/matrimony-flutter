import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/profile_section.dart';
import '../controllers/profile_controller.dart';
import '../widgets/profile_section_card.dart';
import '../widgets/profile_photo_carousel.dart';

@RoutePage()
class ProfileEditScreen extends ConsumerWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Edit Profile'),
        actions: [
          TextButton(
            onPressed: () {
              // TODO: Implement save functionality
              context.router.back();
            },
            child: const Text('Save'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfilePhotoCarousel(),
            _buildEditableSections(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableSections(WidgetRef ref) {
    final profileSections = ref.watch(profileControllerProvider);
    
    return profileSections.when(
      data: (sections) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: sections.length,
        itemBuilder: (context, index) => _buildEditableSection(
          context,
          sections[index],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildEditableSection(BuildContext context, ProfileSection section) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  section.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                if (section.isEditable)
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () => _showEditDialog(context, section),
                  ),
              ],
            ),
            const SizedBox(height: 16),
            ...section.details.entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Text(
                      '${entry.key}:',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    Text(entry.value),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showEditDialog(BuildContext context, ProfileSection section) async {
    final formKey = GlobalKey<FormState>();
    final controllers = section.details.map(
      (key, value) => MapEntry(
        key,
        TextEditingController(text: value),
      ),
    );

    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit ${section.title}'),
        content: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...controllers.entries.map(
                  (entry) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: entry.value,
                      decoration: InputDecoration(
                        labelText: entry.key,
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter ${entry.key}';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          Consumer(
            builder: (context, ref, _) => TextButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  final updatedDetails = controllers.map(
                    (key, controller) => MapEntry(key, controller.text),
                  );
                  ref.read(profileControllerProvider.notifier)
                      .updateSection(section.title, updatedDetails);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );

    // Dispose all controllers
    for (final controller in controllers.values) {
      controller.dispose();
    }
  }
} 