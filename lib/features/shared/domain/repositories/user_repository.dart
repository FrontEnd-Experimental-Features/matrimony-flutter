import '../entities/user_profile.dart';

abstract class UserRepository {
  Future<List<UserProfile>> getMatches();
  Future<UserProfile> getUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
} 