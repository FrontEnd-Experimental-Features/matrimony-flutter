// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactDetails {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get currentLocation => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsCopyWith<ContactDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsCopyWith<$Res> {
  factory $ContactDetailsCopyWith(
          ContactDetails value, $Res Function(ContactDetails) then) =
      _$ContactDetailsCopyWithImpl<$Res, ContactDetails>;
  @useResult
  $Res call(
      {int id, int userId, String phone, String email, String currentLocation});
}

/// @nodoc
class _$ContactDetailsCopyWithImpl<$Res, $Val extends ContactDetails>
    implements $ContactDetailsCopyWith<$Res> {
  _$ContactDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? phone = null,
    Object? email = null,
    Object? currentLocation = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsImplCopyWith<$Res>
    implements $ContactDetailsCopyWith<$Res> {
  factory _$$ContactDetailsImplCopyWith(_$ContactDetailsImpl value,
          $Res Function(_$ContactDetailsImpl) then) =
      __$$ContactDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int userId, String phone, String email, String currentLocation});
}

/// @nodoc
class __$$ContactDetailsImplCopyWithImpl<$Res>
    extends _$ContactDetailsCopyWithImpl<$Res, _$ContactDetailsImpl>
    implements _$$ContactDetailsImplCopyWith<$Res> {
  __$$ContactDetailsImplCopyWithImpl(
      _$ContactDetailsImpl _value, $Res Function(_$ContactDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? phone = null,
    Object? email = null,
    Object? currentLocation = null,
  }) {
    return _then(_$ContactDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactDetailsImpl implements _ContactDetails {
  const _$ContactDetailsImpl(
      {required this.id,
      required this.userId,
      required this.phone,
      required this.email,
      required this.currentLocation});

  @override
  final int id;
  @override
  final int userId;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String currentLocation;

  @override
  String toString() {
    return 'ContactDetails(id: $id, userId: $userId, phone: $phone, email: $email, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, phone, email, currentLocation);

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsImplCopyWith<_$ContactDetailsImpl> get copyWith =>
      __$$ContactDetailsImplCopyWithImpl<_$ContactDetailsImpl>(
          this, _$identity);
}

abstract class _ContactDetails implements ContactDetails {
  const factory _ContactDetails(
      {required final int id,
      required final int userId,
      required final String phone,
      required final String email,
      required final String currentLocation}) = _$ContactDetailsImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get currentLocation;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsImplCopyWith<_$ContactDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
