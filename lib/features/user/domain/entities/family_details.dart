import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_details.freezed.dart';

@freezed
class FamilyDetails with _$FamilyDetails {
  const factory FamilyDetails({
    required int id,
    required int userId,
    required int familyTypeId,
    required String familyStatus,
    required int fatherOccupationId,
    required int motherOccupationId,
    required int numberOfSiblings,
  }) = _FamilyDetails;
}

@freezed
class FamilyType with _$FamilyType {
  const factory FamilyType({
    required int id,
    required String typeName,
  }) = _FamilyType;
}

@freezed
class Occupation with _$Occupation {
  const factory Occupation({
    required int id,
    required String occupationName,
  }) = _Occupation;
}
