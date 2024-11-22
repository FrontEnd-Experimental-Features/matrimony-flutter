// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfile {
  UserDetails get userDetails => throw _privateConstructorUsedError;
  ContactDetails get contactDetails => throw _privateConstructorUsedError;
  FamilyDetails get familyDetails => throw _privateConstructorUsedError;
  CareerEducationDetails get careerEducationDetails =>
      throw _privateConstructorUsedError;
  HobbiesInterestsDetails get hobbiesInterestsDetails =>
      throw _privateConstructorUsedError;
  AboutProfile get aboutProfile =>
      throw _privateConstructorUsedError; // Include references to related entities
  FamilyType? get familyType => throw _privateConstructorUsedError;
  Occupation? get fatherOccupation => throw _privateConstructorUsedError;
  Occupation? get motherOccupation => throw _privateConstructorUsedError;
  Education? get education => throw _privateConstructorUsedError;
  Profession? get profession => throw _privateConstructorUsedError;
  ProfileCreatedBy? get profileCreatedBy => throw _privateConstructorUsedError;
  LookingFor? get lookingFor => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {UserDetails userDetails,
      ContactDetails contactDetails,
      FamilyDetails familyDetails,
      CareerEducationDetails careerEducationDetails,
      HobbiesInterestsDetails hobbiesInterestsDetails,
      AboutProfile aboutProfile,
      FamilyType? familyType,
      Occupation? fatherOccupation,
      Occupation? motherOccupation,
      Education? education,
      Profession? profession,
      ProfileCreatedBy? profileCreatedBy,
      LookingFor? lookingFor});

  $UserDetailsCopyWith<$Res> get userDetails;
  $ContactDetailsCopyWith<$Res> get contactDetails;
  $FamilyDetailsCopyWith<$Res> get familyDetails;
  $CareerEducationDetailsCopyWith<$Res> get careerEducationDetails;
  $HobbiesInterestsDetailsCopyWith<$Res> get hobbiesInterestsDetails;
  $AboutProfileCopyWith<$Res> get aboutProfile;
  $FamilyTypeCopyWith<$Res>? get familyType;
  $OccupationCopyWith<$Res>? get fatherOccupation;
  $OccupationCopyWith<$Res>? get motherOccupation;
  $EducationCopyWith<$Res>? get education;
  $ProfessionCopyWith<$Res>? get profession;
  $ProfileCreatedByCopyWith<$Res>? get profileCreatedBy;
  $LookingForCopyWith<$Res>? get lookingFor;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
    Object? contactDetails = null,
    Object? familyDetails = null,
    Object? careerEducationDetails = null,
    Object? hobbiesInterestsDetails = null,
    Object? aboutProfile = null,
    Object? familyType = freezed,
    Object? fatherOccupation = freezed,
    Object? motherOccupation = freezed,
    Object? education = freezed,
    Object? profession = freezed,
    Object? profileCreatedBy = freezed,
    Object? lookingFor = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails,
      familyDetails: null == familyDetails
          ? _value.familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as FamilyDetails,
      careerEducationDetails: null == careerEducationDetails
          ? _value.careerEducationDetails
          : careerEducationDetails // ignore: cast_nullable_to_non_nullable
              as CareerEducationDetails,
      hobbiesInterestsDetails: null == hobbiesInterestsDetails
          ? _value.hobbiesInterestsDetails
          : hobbiesInterestsDetails // ignore: cast_nullable_to_non_nullable
              as HobbiesInterestsDetails,
      aboutProfile: null == aboutProfile
          ? _value.aboutProfile
          : aboutProfile // ignore: cast_nullable_to_non_nullable
              as AboutProfile,
      familyType: freezed == familyType
          ? _value.familyType
          : familyType // ignore: cast_nullable_to_non_nullable
              as FamilyType?,
      fatherOccupation: freezed == fatherOccupation
          ? _value.fatherOccupation
          : fatherOccupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      motherOccupation: freezed == motherOccupation
          ? _value.motherOccupation
          : motherOccupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Profession?,
      profileCreatedBy: freezed == profileCreatedBy
          ? _value.profileCreatedBy
          : profileCreatedBy // ignore: cast_nullable_to_non_nullable
              as ProfileCreatedBy?,
      lookingFor: freezed == lookingFor
          ? _value.lookingFor
          : lookingFor // ignore: cast_nullable_to_non_nullable
              as LookingFor?,
    ) as $Val);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res> get userDetails {
    return $UserDetailsCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsCopyWith<$Res> get contactDetails {
    return $ContactDetailsCopyWith<$Res>(_value.contactDetails, (value) {
      return _then(_value.copyWith(contactDetails: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyDetailsCopyWith<$Res> get familyDetails {
    return $FamilyDetailsCopyWith<$Res>(_value.familyDetails, (value) {
      return _then(_value.copyWith(familyDetails: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CareerEducationDetailsCopyWith<$Res> get careerEducationDetails {
    return $CareerEducationDetailsCopyWith<$Res>(_value.careerEducationDetails,
        (value) {
      return _then(_value.copyWith(careerEducationDetails: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HobbiesInterestsDetailsCopyWith<$Res> get hobbiesInterestsDetails {
    return $HobbiesInterestsDetailsCopyWith<$Res>(
        _value.hobbiesInterestsDetails, (value) {
      return _then(_value.copyWith(hobbiesInterestsDetails: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutProfileCopyWith<$Res> get aboutProfile {
    return $AboutProfileCopyWith<$Res>(_value.aboutProfile, (value) {
      return _then(_value.copyWith(aboutProfile: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyTypeCopyWith<$Res>? get familyType {
    if (_value.familyType == null) {
      return null;
    }

    return $FamilyTypeCopyWith<$Res>(_value.familyType!, (value) {
      return _then(_value.copyWith(familyType: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OccupationCopyWith<$Res>? get fatherOccupation {
    if (_value.fatherOccupation == null) {
      return null;
    }

    return $OccupationCopyWith<$Res>(_value.fatherOccupation!, (value) {
      return _then(_value.copyWith(fatherOccupation: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OccupationCopyWith<$Res>? get motherOccupation {
    if (_value.motherOccupation == null) {
      return null;
    }

    return $OccupationCopyWith<$Res>(_value.motherOccupation!, (value) {
      return _then(_value.copyWith(motherOccupation: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EducationCopyWith<$Res>? get education {
    if (_value.education == null) {
      return null;
    }

    return $EducationCopyWith<$Res>(_value.education!, (value) {
      return _then(_value.copyWith(education: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfessionCopyWith<$Res>? get profession {
    if (_value.profession == null) {
      return null;
    }

    return $ProfessionCopyWith<$Res>(_value.profession!, (value) {
      return _then(_value.copyWith(profession: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCreatedByCopyWith<$Res>? get profileCreatedBy {
    if (_value.profileCreatedBy == null) {
      return null;
    }

    return $ProfileCreatedByCopyWith<$Res>(_value.profileCreatedBy!, (value) {
      return _then(_value.copyWith(profileCreatedBy: value) as $Val);
    });
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LookingForCopyWith<$Res>? get lookingFor {
    if (_value.lookingFor == null) {
      return null;
    }

    return $LookingForCopyWith<$Res>(_value.lookingFor!, (value) {
      return _then(_value.copyWith(lookingFor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDetails userDetails,
      ContactDetails contactDetails,
      FamilyDetails familyDetails,
      CareerEducationDetails careerEducationDetails,
      HobbiesInterestsDetails hobbiesInterestsDetails,
      AboutProfile aboutProfile,
      FamilyType? familyType,
      Occupation? fatherOccupation,
      Occupation? motherOccupation,
      Education? education,
      Profession? profession,
      ProfileCreatedBy? profileCreatedBy,
      LookingFor? lookingFor});

  @override
  $UserDetailsCopyWith<$Res> get userDetails;
  @override
  $ContactDetailsCopyWith<$Res> get contactDetails;
  @override
  $FamilyDetailsCopyWith<$Res> get familyDetails;
  @override
  $CareerEducationDetailsCopyWith<$Res> get careerEducationDetails;
  @override
  $HobbiesInterestsDetailsCopyWith<$Res> get hobbiesInterestsDetails;
  @override
  $AboutProfileCopyWith<$Res> get aboutProfile;
  @override
  $FamilyTypeCopyWith<$Res>? get familyType;
  @override
  $OccupationCopyWith<$Res>? get fatherOccupation;
  @override
  $OccupationCopyWith<$Res>? get motherOccupation;
  @override
  $EducationCopyWith<$Res>? get education;
  @override
  $ProfessionCopyWith<$Res>? get profession;
  @override
  $ProfileCreatedByCopyWith<$Res>? get profileCreatedBy;
  @override
  $LookingForCopyWith<$Res>? get lookingFor;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetails = null,
    Object? contactDetails = null,
    Object? familyDetails = null,
    Object? careerEducationDetails = null,
    Object? hobbiesInterestsDetails = null,
    Object? aboutProfile = null,
    Object? familyType = freezed,
    Object? fatherOccupation = freezed,
    Object? motherOccupation = freezed,
    Object? education = freezed,
    Object? profession = freezed,
    Object? profileCreatedBy = freezed,
    Object? lookingFor = freezed,
  }) {
    return _then(_$UserProfileImpl(
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails,
      familyDetails: null == familyDetails
          ? _value.familyDetails
          : familyDetails // ignore: cast_nullable_to_non_nullable
              as FamilyDetails,
      careerEducationDetails: null == careerEducationDetails
          ? _value.careerEducationDetails
          : careerEducationDetails // ignore: cast_nullable_to_non_nullable
              as CareerEducationDetails,
      hobbiesInterestsDetails: null == hobbiesInterestsDetails
          ? _value.hobbiesInterestsDetails
          : hobbiesInterestsDetails // ignore: cast_nullable_to_non_nullable
              as HobbiesInterestsDetails,
      aboutProfile: null == aboutProfile
          ? _value.aboutProfile
          : aboutProfile // ignore: cast_nullable_to_non_nullable
              as AboutProfile,
      familyType: freezed == familyType
          ? _value.familyType
          : familyType // ignore: cast_nullable_to_non_nullable
              as FamilyType?,
      fatherOccupation: freezed == fatherOccupation
          ? _value.fatherOccupation
          : fatherOccupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      motherOccupation: freezed == motherOccupation
          ? _value.motherOccupation
          : motherOccupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Profession?,
      profileCreatedBy: freezed == profileCreatedBy
          ? _value.profileCreatedBy
          : profileCreatedBy // ignore: cast_nullable_to_non_nullable
              as ProfileCreatedBy?,
      lookingFor: freezed == lookingFor
          ? _value.lookingFor
          : lookingFor // ignore: cast_nullable_to_non_nullable
              as LookingFor?,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.userDetails,
      required this.contactDetails,
      required this.familyDetails,
      required this.careerEducationDetails,
      required this.hobbiesInterestsDetails,
      required this.aboutProfile,
      this.familyType,
      this.fatherOccupation,
      this.motherOccupation,
      this.education,
      this.profession,
      this.profileCreatedBy,
      this.lookingFor});

  @override
  final UserDetails userDetails;
  @override
  final ContactDetails contactDetails;
  @override
  final FamilyDetails familyDetails;
  @override
  final CareerEducationDetails careerEducationDetails;
  @override
  final HobbiesInterestsDetails hobbiesInterestsDetails;
  @override
  final AboutProfile aboutProfile;
// Include references to related entities
  @override
  final FamilyType? familyType;
  @override
  final Occupation? fatherOccupation;
  @override
  final Occupation? motherOccupation;
  @override
  final Education? education;
  @override
  final Profession? profession;
  @override
  final ProfileCreatedBy? profileCreatedBy;
  @override
  final LookingFor? lookingFor;

  @override
  String toString() {
    return 'UserProfile(userDetails: $userDetails, contactDetails: $contactDetails, familyDetails: $familyDetails, careerEducationDetails: $careerEducationDetails, hobbiesInterestsDetails: $hobbiesInterestsDetails, aboutProfile: $aboutProfile, familyType: $familyType, fatherOccupation: $fatherOccupation, motherOccupation: $motherOccupation, education: $education, profession: $profession, profileCreatedBy: $profileCreatedBy, lookingFor: $lookingFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails) &&
            (identical(other.familyDetails, familyDetails) ||
                other.familyDetails == familyDetails) &&
            (identical(other.careerEducationDetails, careerEducationDetails) ||
                other.careerEducationDetails == careerEducationDetails) &&
            (identical(
                    other.hobbiesInterestsDetails, hobbiesInterestsDetails) ||
                other.hobbiesInterestsDetails == hobbiesInterestsDetails) &&
            (identical(other.aboutProfile, aboutProfile) ||
                other.aboutProfile == aboutProfile) &&
            (identical(other.familyType, familyType) ||
                other.familyType == familyType) &&
            (identical(other.fatherOccupation, fatherOccupation) ||
                other.fatherOccupation == fatherOccupation) &&
            (identical(other.motherOccupation, motherOccupation) ||
                other.motherOccupation == motherOccupation) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.profileCreatedBy, profileCreatedBy) ||
                other.profileCreatedBy == profileCreatedBy) &&
            (identical(other.lookingFor, lookingFor) ||
                other.lookingFor == lookingFor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userDetails,
      contactDetails,
      familyDetails,
      careerEducationDetails,
      hobbiesInterestsDetails,
      aboutProfile,
      familyType,
      fatherOccupation,
      motherOccupation,
      education,
      profession,
      profileCreatedBy,
      lookingFor);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final UserDetails userDetails,
      required final ContactDetails contactDetails,
      required final FamilyDetails familyDetails,
      required final CareerEducationDetails careerEducationDetails,
      required final HobbiesInterestsDetails hobbiesInterestsDetails,
      required final AboutProfile aboutProfile,
      final FamilyType? familyType,
      final Occupation? fatherOccupation,
      final Occupation? motherOccupation,
      final Education? education,
      final Profession? profession,
      final ProfileCreatedBy? profileCreatedBy,
      final LookingFor? lookingFor}) = _$UserProfileImpl;

  @override
  UserDetails get userDetails;
  @override
  ContactDetails get contactDetails;
  @override
  FamilyDetails get familyDetails;
  @override
  CareerEducationDetails get careerEducationDetails;
  @override
  HobbiesInterestsDetails get hobbiesInterestsDetails;
  @override
  AboutProfile get aboutProfile; // Include references to related entities
  @override
  FamilyType? get familyType;
  @override
  Occupation? get fatherOccupation;
  @override
  Occupation? get motherOccupation;
  @override
  Education? get education;
  @override
  Profession? get profession;
  @override
  ProfileCreatedBy? get profileCreatedBy;
  @override
  LookingFor? get lookingFor;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
