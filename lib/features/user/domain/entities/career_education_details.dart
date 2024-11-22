import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_education_details.freezed.dart';

@freezed
class CareerEducationDetails with _$CareerEducationDetails {
  const factory CareerEducationDetails({
    required int id,
    required int userId,
    required int educationId,
    required String college,
    required int professionId,
    required String company,
    required String annualIncome,
  }) = _CareerEducationDetails;
}

@freezed
class Education with _$Education {
  const factory Education({
    required int id,
    required String educationLevel,
    required String fullForm,
  }) = _Education;
}

@freezed
class Profession with _$Profession {
  const factory Profession({
    required int id,
    required String professionName,
    String? description,
  }) = _Profession;
}
