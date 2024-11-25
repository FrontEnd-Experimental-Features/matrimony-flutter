// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthUser _$AuthUserFromJson(Map<String, dynamic> json) {
  return _AuthUser.fromJson(json);
}

/// @nodoc
mixin _$AuthUser {
  int get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  bool get isVerifiedFlag => throw _privateConstructorUsedError;
  String? get jwtToken => throw _privateConstructorUsedError;

  /// Serializes this AuthUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserCopyWith<AuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res, AuthUser>;
  @useResult
  $Res call(
      {int id,
      String userName,
      @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime dateOfBirth,
      String gender,
      bool isVerifiedFlag,
      String? jwtToken});
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? isVerifiedFlag = null,
    Object? jwtToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isVerifiedFlag: null == isVerifiedFlag
          ? _value.isVerifiedFlag
          : isVerifiedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserImplCopyWith<$Res>
    implements $AuthUserCopyWith<$Res> {
  factory _$$AuthUserImplCopyWith(
          _$AuthUserImpl value, $Res Function(_$AuthUserImpl) then) =
      __$$AuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userName,
      @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
      DateTime dateOfBirth,
      String gender,
      bool isVerifiedFlag,
      String? jwtToken});
}

/// @nodoc
class __$$AuthUserImplCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$AuthUserImpl>
    implements _$$AuthUserImplCopyWith<$Res> {
  __$$AuthUserImplCopyWithImpl(
      _$AuthUserImpl _value, $Res Function(_$AuthUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? isVerifiedFlag = null,
    Object? jwtToken = freezed,
  }) {
    return _then(_$AuthUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isVerifiedFlag: null == isVerifiedFlag
          ? _value.isVerifiedFlag
          : isVerifiedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserImpl implements _AuthUser {
  const _$AuthUserImpl(
      {required this.id,
      required this.userName,
      @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
      required this.dateOfBirth,
      required this.gender,
      required this.isVerifiedFlag,
      this.jwtToken});

  factory _$AuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserImplFromJson(json);

  @override
  final int id;
  @override
  final String userName;
  @override
  @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
  final DateTime dateOfBirth;
  @override
  final String gender;
  @override
  final bool isVerifiedFlag;
  @override
  final String? jwtToken;

  @override
  String toString() {
    return 'AuthUser(id: $id, userName: $userName, dateOfBirth: $dateOfBirth, gender: $gender, isVerifiedFlag: $isVerifiedFlag, jwtToken: $jwtToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isVerifiedFlag, isVerifiedFlag) ||
                other.isVerifiedFlag == isVerifiedFlag) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, dateOfBirth, gender, isVerifiedFlag, jwtToken);

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      __$$AuthUserImplCopyWithImpl<_$AuthUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserImplToJson(
      this,
    );
  }
}

abstract class _AuthUser implements AuthUser {
  const factory _AuthUser(
      {required final int id,
      required final String userName,
      @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
      required final DateTime dateOfBirth,
      required final String gender,
      required final bool isVerifiedFlag,
      final String? jwtToken}) = _$AuthUserImpl;

  factory _AuthUser.fromJson(Map<String, dynamic> json) =
      _$AuthUserImpl.fromJson;

  @override
  int get id;
  @override
  String get userName;
  @override
  @JsonKey(fromJson: _dateFromJson, toJson: _dateToJson)
  DateTime get dateOfBirth;
  @override
  String get gender;
  @override
  bool get isVerifiedFlag;
  @override
  String? get jwtToken;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
