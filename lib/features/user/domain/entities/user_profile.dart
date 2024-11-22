import 'package:freezed_annotation/freezed_annotation.dart';
import 'about_profile.dart';
import 'career_education_details.dart';
import 'contact_details.dart';
import 'family_details.dart';
import 'hobbies_interests_details.dart';
import 'user_details.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required UserDetails userDetails,
    required ContactDetails contactDetails,
    required FamilyDetails familyDetails,
    required CareerEducationDetails careerEducationDetails,
    required HobbiesInterestsDetails hobbiesInterestsDetails,
    required AboutProfile aboutProfile,
    // Include references to related entities
    FamilyType? familyType,
    Occupation? fatherOccupation,
    Occupation? motherOccupation,
    Education? education,
    Profession? profession,
    ProfileCreatedBy? profileCreatedBy,
    LookingFor? lookingFor,
  }) = _UserProfile;
}
