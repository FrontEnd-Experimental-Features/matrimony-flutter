import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required int id,
    required DateTime dateOfBirth,
    required String userName,
    @Default(true) bool isVerifiedFlag,
    @Default('Male') String gender,
  }) = _UserDetails;
}
