import '../../domain/entities/user_profile.dart';

abstract class UserRemoteDataSource {
  Future<List<UserProfile>> getMatches();
  Future<UserProfile> getUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final _mockProfiles = [
    const UserProfile(
      id: '1',
      name: 'Sarah Johnson',
      age: 28,
      gender: 'Female',
      location: 'New York, USA',
      occupation: 'Software Engineer',
      about: 'Passionate about technology and travel',
      interests: ['Travel', 'Photography', 'Cooking'],
      photos: [
        'https://example.com/photos/sarah1.jpg',
        'https://example.com/photos/sarah2.jpg',
      ],
    ),
    const UserProfile(
      id: '2',
      name: 'John Smith',
      age: 32,
      gender: 'Male',
      location: 'London, UK',
      occupation: 'Doctor',
      about: 'Love exploring new cultures and meeting new people',
      interests: ['Music', 'Reading', 'Hiking'],
      photos: [
        'https://example.com/photos/john1.jpg',
        'https://example.com/photos/john2.jpg',
      ],
    ),
  ];

  final _currentUserProfile = const UserProfile(
    id: 'current_user',
    name: 'Alex Thompson',
    age: 30,
    gender: 'Male',
    location: 'San Francisco, USA',
    occupation: 'Product Manager',
    about: 'Looking for a meaningful connection',
    interests: ['Technology', 'Fitness', 'Travel'],
    photos: [
      'https://example.com/photos/alex1.jpg',
      'https://example.com/photos/alex2.jpg',
    ],
  );

  @override
  Future<List<UserProfile>> getMatches() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    return _mockProfiles;
  }

  @override
  Future<UserProfile> getUserProfile(String userId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    if (userId == 'current_user') {
      return _currentUserProfile;
    }
    
    final profile = _mockProfiles.firstWhere(
      (profile) => profile.id == userId,
      orElse: () => throw Exception('Profile not found'),
    );
    
    return profile;
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    // In a real implementation, this would update the backend
    // For now, we just simulate success
    return;
  }
}