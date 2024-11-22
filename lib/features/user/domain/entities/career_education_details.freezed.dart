// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_education_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CareerEducationDetails {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get educationId => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  int get professionId => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get annualIncome => throw _privateConstructorUsedError;

  /// Create a copy of CareerEducationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerEducationDetailsCopyWith<CareerEducationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerEducationDetailsCopyWith<$Res> {
  factory $CareerEducationDetailsCopyWith(CareerEducationDetails value,
          $Res Function(CareerEducationDetails) then) =
      _$CareerEducationDetailsCopyWithImpl<$Res, CareerEducationDetails>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int educationId,
      String college,
      int professionId,
      String company,
      String annualIncome});
}

/// @nodoc
class _$CareerEducationDetailsCopyWithImpl<$Res,
        $Val extends CareerEducationDetails>
    implements $CareerEducationDetailsCopyWith<$Res> {
  _$CareerEducationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerEducationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? educationId = null,
    Object? college = null,
    Object? professionId = null,
    Object? company = null,
    Object? annualIncome = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      educationId: null == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int,
      college: null == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      professionId: null == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      annualIncome: null == annualIncome
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerEducationDetailsImplCopyWith<$Res>
    implements $CareerEducationDetailsCopyWith<$Res> {
  factory _$$CareerEducationDetailsImplCopyWith(
          _$CareerEducationDetailsImpl value,
          $Res Function(_$CareerEducationDetailsImpl) then) =
      __$$CareerEducationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int educationId,
      String college,
      int professionId,
      String company,
      String annualIncome});
}

/// @nodoc
class __$$CareerEducationDetailsImplCopyWithImpl<$Res>
    extends _$CareerEducationDetailsCopyWithImpl<$Res,
        _$CareerEducationDetailsImpl>
    implements _$$CareerEducationDetailsImplCopyWith<$Res> {
  __$$CareerEducationDetailsImplCopyWithImpl(
      _$CareerEducationDetailsImpl _value,
      $Res Function(_$CareerEducationDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareerEducationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? educationId = null,
    Object? college = null,
    Object? professionId = null,
    Object? company = null,
    Object? annualIncome = null,
  }) {
    return _then(_$CareerEducationDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      educationId: null == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as int,
      college: null == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      professionId: null == professionId
          ? _value.professionId
          : professionId // ignore: cast_nullable_to_non_nullable
              as int,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      annualIncome: null == annualIncome
          ? _value.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CareerEducationDetailsImpl implements _CareerEducationDetails {
  const _$CareerEducationDetailsImpl(
      {required this.id,
      required this.userId,
      required this.educationId,
      required this.college,
      required this.professionId,
      required this.company,
      required this.annualIncome});

  @override
  final int id;
  @override
  final int userId;
  @override
  final int educationId;
  @override
  final String college;
  @override
  final int professionId;
  @override
  final String company;
  @override
  final String annualIncome;

  @override
  String toString() {
    return 'CareerEducationDetails(id: $id, userId: $userId, educationId: $educationId, college: $college, professionId: $professionId, company: $company, annualIncome: $annualIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerEducationDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.educationId, educationId) ||
                other.educationId == educationId) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.professionId, professionId) ||
                other.professionId == professionId) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, educationId, college,
      professionId, company, annualIncome);

  /// Create a copy of CareerEducationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerEducationDetailsImplCopyWith<_$CareerEducationDetailsImpl>
      get copyWith => __$$CareerEducationDetailsImplCopyWithImpl<
          _$CareerEducationDetailsImpl>(this, _$identity);
}

abstract class _CareerEducationDetails implements CareerEducationDetails {
  const factory _CareerEducationDetails(
      {required final int id,
      required final int userId,
      required final int educationId,
      required final String college,
      required final int professionId,
      required final String company,
      required final String annualIncome}) = _$CareerEducationDetailsImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get educationId;
  @override
  String get college;
  @override
  int get professionId;
  @override
  String get company;
  @override
  String get annualIncome;

  /// Create a copy of CareerEducationDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerEducationDetailsImplCopyWith<_$CareerEducationDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Education {
  int get id => throw _privateConstructorUsedError;
  String get educationLevel => throw _privateConstructorUsedError;
  String get fullForm => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call({int id, String educationLevel, String fullForm});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? educationLevel = null,
    Object? fullForm = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      fullForm: null == fullForm
          ? _value.fullForm
          : fullForm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
          _$EducationImpl value, $Res Function(_$EducationImpl) then) =
      __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String educationLevel, String fullForm});
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
      _$EducationImpl _value, $Res Function(_$EducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? educationLevel = null,
    Object? fullForm = null,
  }) {
    return _then(_$EducationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      educationLevel: null == educationLevel
          ? _value.educationLevel
          : educationLevel // ignore: cast_nullable_to_non_nullable
              as String,
      fullForm: null == fullForm
          ? _value.fullForm
          : fullForm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EducationImpl implements _Education {
  const _$EducationImpl(
      {required this.id, required this.educationLevel, required this.fullForm});

  @override
  final int id;
  @override
  final String educationLevel;
  @override
  final String fullForm;

  @override
  String toString() {
    return 'Education(id: $id, educationLevel: $educationLevel, fullForm: $fullForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.fullForm, fullForm) ||
                other.fullForm == fullForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, educationLevel, fullForm);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);
}

abstract class _Education implements Education {
  const factory _Education(
      {required final int id,
      required final String educationLevel,
      required final String fullForm}) = _$EducationImpl;

  @override
  int get id;
  @override
  String get educationLevel;
  @override
  String get fullForm;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Profession {
  int get id => throw _privateConstructorUsedError;
  String get professionName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of Profession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfessionCopyWith<Profession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionCopyWith<$Res> {
  factory $ProfessionCopyWith(
          Profession value, $Res Function(Profession) then) =
      _$ProfessionCopyWithImpl<$Res, Profession>;
  @useResult
  $Res call({int id, String professionName, String? description});
}

/// @nodoc
class _$ProfessionCopyWithImpl<$Res, $Val extends Profession>
    implements $ProfessionCopyWith<$Res> {
  _$ProfessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? professionName = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      professionName: null == professionName
          ? _value.professionName
          : professionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessionImplCopyWith<$Res>
    implements $ProfessionCopyWith<$Res> {
  factory _$$ProfessionImplCopyWith(
          _$ProfessionImpl value, $Res Function(_$ProfessionImpl) then) =
      __$$ProfessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String professionName, String? description});
}

/// @nodoc
class __$$ProfessionImplCopyWithImpl<$Res>
    extends _$ProfessionCopyWithImpl<$Res, _$ProfessionImpl>
    implements _$$ProfessionImplCopyWith<$Res> {
  __$$ProfessionImplCopyWithImpl(
      _$ProfessionImpl _value, $Res Function(_$ProfessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Profession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? professionName = null,
    Object? description = freezed,
  }) {
    return _then(_$ProfessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      professionName: null == professionName
          ? _value.professionName
          : professionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfessionImpl implements _Profession {
  const _$ProfessionImpl(
      {required this.id, required this.professionName, this.description});

  @override
  final int id;
  @override
  final String professionName;
  @override
  final String? description;

  @override
  String toString() {
    return 'Profession(id: $id, professionName: $professionName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.professionName, professionName) ||
                other.professionName == professionName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, professionName, description);

  /// Create a copy of Profession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionImplCopyWith<_$ProfessionImpl> get copyWith =>
      __$$ProfessionImplCopyWithImpl<_$ProfessionImpl>(this, _$identity);
}

abstract class _Profession implements Profession {
  const factory _Profession(
      {required final int id,
      required final String professionName,
      final String? description}) = _$ProfessionImpl;

  @override
  int get id;
  @override
  String get professionName;
  @override
  String? get description;

  /// Create a copy of Profession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfessionImplCopyWith<_$ProfessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
