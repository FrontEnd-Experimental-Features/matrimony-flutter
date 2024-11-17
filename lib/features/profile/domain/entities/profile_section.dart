import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_section.freezed.dart';
part 'profile_section.g.dart';

@freezed
class ProfileSection with _$ProfileSection {
  const factory ProfileSection({
    required String title,
    required Map<String, String> details,
    required bool isEditable,
  }) = _ProfileSection;

  factory ProfileSection.fromJson(Map<String, dynamic> json) =>
      _$ProfileSectionFromJson(json);
} 