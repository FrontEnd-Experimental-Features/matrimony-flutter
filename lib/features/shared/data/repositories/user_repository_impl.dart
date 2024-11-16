import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<UserProfile>> getMatches() async {
    try {
      return await _remoteDataSource.getMatches();
    } catch (e) {
      throw Exception('Failed to fetch matches');
    }
  }

  @override
  Future<UserProfile> getUserProfile(String userId) async {
    try {
      return await _remoteDataSource.getUserProfile(userId);
    } catch (e) {
      throw Exception('Failed to fetch user profile');
    }
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) async {
    try {
      await _remoteDataSource.updateUserProfile(profile);
    } catch (e) {
      throw Exception('Failed to update profile');
    }
  }
} 