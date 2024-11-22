import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobbies_interests_details.freezed.dart';

@freezed
class HobbiesInterestsDetails with _$HobbiesInterestsDetails {
  const factory HobbiesInterestsDetails({
    required int id,
    required int userId,
    required String hobbies,
    required String interests,
    required String sports,
    required String music,
  }) = _HobbiesInterestsDetails;
}
