import '../../domain/entities/user_profile.dart';

abstract class UserRemoteDataSource {
  Future<List<UserProfile>> getMatches();
  Future<UserProfile> getUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<List<UserProfile>> getMatches() async {
    // TODO: Implement actual API call
    return [];
  }

  @override
  Future<UserProfile> getUserProfile(String userId) async {
    // TODO: Implement actual API call
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) async {
    // TODO: Implement actual API call
    throw UnimplementedError();
  }
} 