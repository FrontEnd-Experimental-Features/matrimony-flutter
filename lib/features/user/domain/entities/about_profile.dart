import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_profile.freezed.dart';

@freezed
class AboutProfile with _$AboutProfile {
  const factory AboutProfile({
    required int id,
    required int userId,
    required int profileCreatedById,
    required int lookingForId,
  }) = _AboutProfile;
}

@freezed
class ProfileCreatedBy with _$ProfileCreatedBy {
  const factory ProfileCreatedBy({
    required int id,
    required String creatorName,
  }) = _ProfileCreatedBy;
}

@freezed
class LookingFor with _$LookingFor {
  const factory LookingFor({
    required int id,
    required String description,
  }) = _LookingFor;
}
