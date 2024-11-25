import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

DateTime _dateFromJson(String date) => DateTime.parse(date);
String _dateToJson(DateTime date) => date.toIso8601String();

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required int id,
    required String userName,
    @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson) 
    required DateTime dateOfBirth,
    required String gender,
    required bool isVerifiedFlag,
    String? jwtToken,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);
}
