// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutProfile {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get profileCreatedById => throw _privateConstructorUsedError;
  int get lookingForId => throw _privateConstructorUsedError;

  /// Create a copy of AboutProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutProfileCopyWith<AboutProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutProfileCopyWith<$Res> {
  factory $AboutProfileCopyWith(
          AboutProfile value, $Res Function(AboutProfile) then) =
      _$AboutProfileCopyWithImpl<$Res, AboutProfile>;
  @useResult
  $Res call({int id, int userId, int profileCreatedById, int lookingForId});
}

/// @nodoc
class _$AboutProfileCopyWithImpl<$Res, $Val extends AboutProfile>
    implements $AboutProfileCopyWith<$Res> {
  _$AboutProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? profileCreatedById = null,
    Object? lookingForId = null,
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
      profileCreatedById: null == profileCreatedById
          ? _value.profileCreatedById
          : profileCreatedById // ignore: cast_nullable_to_non_nullable
              as int,
      lookingForId: null == lookingForId
          ? _value.lookingForId
          : lookingForId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutProfileImplCopyWith<$Res>
    implements $AboutProfileCopyWith<$Res> {
  factory _$$AboutProfileImplCopyWith(
          _$AboutProfileImpl value, $Res Function(_$AboutProfileImpl) then) =
      __$$AboutProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, int profileCreatedById, int lookingForId});
}

/// @nodoc
class __$$AboutProfileImplCopyWithImpl<$Res>
    extends _$AboutProfileCopyWithImpl<$Res, _$AboutProfileImpl>
    implements _$$AboutProfileImplCopyWith<$Res> {
  __$$AboutProfileImplCopyWithImpl(
      _$AboutProfileImpl _value, $Res Function(_$AboutProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? profileCreatedById = null,
    Object? lookingForId = null,
  }) {
    return _then(_$AboutProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      profileCreatedById: null == profileCreatedById
          ? _value.profileCreatedById
          : profileCreatedById // ignore: cast_nullable_to_non_nullable
              as int,
      lookingForId: null == lookingForId
          ? _value.lookingForId
          : lookingForId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AboutProfileImpl implements _AboutProfile {
  const _$AboutProfileImpl(
      {required this.id,
      required this.userId,
      required this.profileCreatedById,
      required this.lookingForId});

  @override
  final int id;
  @override
  final int userId;
  @override
  final int profileCreatedById;
  @override
  final int lookingForId;

  @override
  String toString() {
    return 'AboutProfile(id: $id, userId: $userId, profileCreatedById: $profileCreatedById, lookingForId: $lookingForId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profileCreatedById, profileCreatedById) ||
                other.profileCreatedById == profileCreatedById) &&
            (identical(other.lookingForId, lookingForId) ||
                other.lookingForId == lookingForId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, profileCreatedById, lookingForId);

  /// Create a copy of AboutProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutProfileImplCopyWith<_$AboutProfileImpl> get copyWith =>
      __$$AboutProfileImplCopyWithImpl<_$AboutProfileImpl>(this, _$identity);
}

abstract class _AboutProfile implements AboutProfile {
  const factory _AboutProfile(
      {required final int id,
      required final int userId,
      required final int profileCreatedById,
      required final int lookingForId}) = _$AboutProfileImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get profileCreatedById;
  @override
  int get lookingForId;

  /// Create a copy of AboutProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutProfileImplCopyWith<_$AboutProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileCreatedBy {
  int get id => throw _privateConstructorUsedError;
  String get creatorName => throw _privateConstructorUsedError;

  /// Create a copy of ProfileCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCreatedByCopyWith<ProfileCreatedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCreatedByCopyWith<$Res> {
  factory $ProfileCreatedByCopyWith(
          ProfileCreatedBy value, $Res Function(ProfileCreatedBy) then) =
      _$ProfileCreatedByCopyWithImpl<$Res, ProfileCreatedBy>;
  @useResult
  $Res call({int id, String creatorName});
}

/// @nodoc
class _$ProfileCreatedByCopyWithImpl<$Res, $Val extends ProfileCreatedBy>
    implements $ProfileCreatedByCopyWith<$Res> {
  _$ProfileCreatedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileCreatedByImplCopyWith<$Res>
    implements $ProfileCreatedByCopyWith<$Res> {
  factory _$$ProfileCreatedByImplCopyWith(_$ProfileCreatedByImpl value,
          $Res Function(_$ProfileCreatedByImpl) then) =
      __$$ProfileCreatedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String creatorName});
}

/// @nodoc
class __$$ProfileCreatedByImplCopyWithImpl<$Res>
    extends _$ProfileCreatedByCopyWithImpl<$Res, _$ProfileCreatedByImpl>
    implements _$$ProfileCreatedByImplCopyWith<$Res> {
  __$$ProfileCreatedByImplCopyWithImpl(_$ProfileCreatedByImpl _value,
      $Res Function(_$ProfileCreatedByImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creatorName = null,
  }) {
    return _then(_$ProfileCreatedByImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileCreatedByImpl implements _ProfileCreatedBy {
  const _$ProfileCreatedByImpl({required this.id, required this.creatorName});

  @override
  final int id;
  @override
  final String creatorName;

  @override
  String toString() {
    return 'ProfileCreatedBy(id: $id, creatorName: $creatorName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCreatedByImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, creatorName);

  /// Create a copy of ProfileCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCreatedByImplCopyWith<_$ProfileCreatedByImpl> get copyWith =>
      __$$ProfileCreatedByImplCopyWithImpl<_$ProfileCreatedByImpl>(
          this, _$identity);
}

abstract class _ProfileCreatedBy implements ProfileCreatedBy {
  const factory _ProfileCreatedBy(
      {required final int id,
      required final String creatorName}) = _$ProfileCreatedByImpl;

  @override
  int get id;
  @override
  String get creatorName;

  /// Create a copy of ProfileCreatedBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileCreatedByImplCopyWith<_$ProfileCreatedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LookingFor {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of LookingFor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LookingForCopyWith<LookingFor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LookingForCopyWith<$Res> {
  factory $LookingForCopyWith(
          LookingFor value, $Res Function(LookingFor) then) =
      _$LookingForCopyWithImpl<$Res, LookingFor>;
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class _$LookingForCopyWithImpl<$Res, $Val extends LookingFor>
    implements $LookingForCopyWith<$Res> {
  _$LookingForCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LookingFor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LookingForImplCopyWith<$Res>
    implements $LookingForCopyWith<$Res> {
  factory _$$LookingForImplCopyWith(
          _$LookingForImpl value, $Res Function(_$LookingForImpl) then) =
      __$$LookingForImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class __$$LookingForImplCopyWithImpl<$Res>
    extends _$LookingForCopyWithImpl<$Res, _$LookingForImpl>
    implements _$$LookingForImplCopyWith<$Res> {
  __$$LookingForImplCopyWithImpl(
      _$LookingForImpl _value, $Res Function(_$LookingForImpl) _then)
      : super(_value, _then);

  /// Create a copy of LookingFor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$LookingForImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LookingForImpl implements _LookingFor {
  const _$LookingForImpl({required this.id, required this.description});

  @override
  final int id;
  @override
  final String description;

  @override
  String toString() {
    return 'LookingFor(id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LookingForImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  /// Create a copy of LookingFor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LookingForImplCopyWith<_$LookingForImpl> get copyWith =>
      __$$LookingForImplCopyWithImpl<_$LookingForImpl>(this, _$identity);
}

abstract class _LookingFor implements LookingFor {
  const factory _LookingFor(
      {required final int id,
      required final String description}) = _$LookingForImpl;

  @override
  int get id;
  @override
  String get description;

  /// Create a copy of LookingFor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LookingForImplCopyWith<_$LookingForImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
