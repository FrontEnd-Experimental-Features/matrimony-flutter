import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/profile_section.dart';

final profileControllerProvider =
    StateNotifierProvider<ProfileController, AsyncValue<List<ProfileSection>>>(
  (ref) => ProfileController(),
);

class ProfileController extends StateNotifier<AsyncValue<List<ProfileSection>>> {
  ProfileController() : super(const AsyncValue.loading()) {
    loadProfile();
  }

  Future<void> loadProfile() async {
    state = const AsyncValue.loading();
    try {
      // TODO: Replace with actual API call
      state = AsyncValue.data([
        const ProfileSection(
          title: 'About Profile',
          details: {
            'Name': 'John Doe',
            'Profile Created By': 'Self',
            'Looking For': 'Life Partner',
          },
          isEditable: true,
        ),
        const ProfileSection(
          title: 'Basic Details',
          details: {
            'Age': '28',
            'Height': '5\' 8"',
            'Marital Status': 'Never Married',
            'Religion': 'Hindu',
            'Mother Tongue': 'Hindi',
          },
          isEditable: true,
        ),
        const ProfileSection(
          title: 'Contact Details',
          details: {
            'Phone': '+91 98765 43210',
            'Email': 'john.doe@example.com',
            'Current Location': 'Mumbai, India',
          },
          isEditable: true,
        ),
        const ProfileSection(
          title: 'Family Details',
          details: {
            'Family Type': 'Nuclear Family',
            'Family Status': 'Middle Class',
            'Father\'s Occupation': 'Business',
            'Mother\'s Occupation': 'Homemaker',
            'Number of Siblings': '2',
          },
          isEditable: true,
        ),
        const ProfileSection(
          title: 'Career & Education',
          details: {
            'Education': 'B.Tech',
            'College': 'IIT Mumbai',
            'Profession': 'Software Engineer',
            'Company': 'Tech Corp',
            'Annual Income': '15-20 LPA',
          },
          isEditable: true,
        ),
        const ProfileSection(
          title: 'Hobbies & Interests',
          details: {
            'Hobbies': 'Reading, Traveling',
            'Interests': 'Technology, Photography',
            'Sports': 'Cricket, Badminton',
            'Music': 'Classical, Rock',
          },
          isEditable: true,
        ),
      ]);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> updateSection(String title, Map<String, String> newDetails) async {
    final currentState = state;
    if (currentState is AsyncData<List<ProfileSection>>) {
      final updatedSections = currentState.value.map((section) {
        if (section.title == title) {
          return section.copyWith(details: newDetails);
        }
        return section;
      }).toList();
      state = AsyncValue.data(updatedSections);
      // TODO: Implement API call to update the section
    }
  }
} 