import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_details.freezed.dart';

@freezed
class ContactDetails with _$ContactDetails {
  const factory ContactDetails({
    required int id,
    required int userId,
    required String phone,
    required String email,
    required String currentLocation,
  }) = _ContactDetails;
}
