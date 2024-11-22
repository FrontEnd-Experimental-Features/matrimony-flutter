// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobbies_interests_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HobbiesInterestsDetails {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get hobbies => throw _privateConstructorUsedError;
  String get interests => throw _privateConstructorUsedError;
  String get sports => throw _privateConstructorUsedError;
  String get music => throw _privateConstructorUsedError;

  /// Create a copy of HobbiesInterestsDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HobbiesInterestsDetailsCopyWith<HobbiesInterestsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbiesInterestsDetailsCopyWith<$Res> {
  factory $HobbiesInterestsDetailsCopyWith(HobbiesInterestsDetails value,
          $Res Function(HobbiesInterestsDetails) then) =
      _$HobbiesInterestsDetailsCopyWithImpl<$Res, HobbiesInterestsDetails>;
  @useResult
  $Res call(
      {int id,
      int userId,
      String hobbies,
      String interests,
      String sports,
      String music});
}

/// @nodoc
class _$HobbiesInterestsDetailsCopyWithImpl<$Res,
        $Val extends HobbiesInterestsDetails>
    implements $HobbiesInterestsDetailsCopyWith<$Res> {
  _$HobbiesInterestsDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HobbiesInterestsDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hobbies = null,
    Object? interests = null,
    Object? sports = null,
    Object? music = null,
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
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      sports: null == sports
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as String,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HobbiesInterestsDetailsImplCopyWith<$Res>
    implements $HobbiesInterestsDetailsCopyWith<$Res> {
  factory _$$HobbiesInterestsDetailsImplCopyWith(
          _$HobbiesInterestsDetailsImpl value,
          $Res Function(_$HobbiesInterestsDetailsImpl) then) =
      __$$HobbiesInterestsDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      String hobbies,
      String interests,
      String sports,
      String music});
}

/// @nodoc
class __$$HobbiesInterestsDetailsImplCopyWithImpl<$Res>
    extends _$HobbiesInterestsDetailsCopyWithImpl<$Res,
        _$HobbiesInterestsDetailsImpl>
    implements _$$HobbiesInterestsDetailsImplCopyWith<$Res> {
  __$$HobbiesInterestsDetailsImplCopyWithImpl(
      _$HobbiesInterestsDetailsImpl _value,
      $Res Function(_$HobbiesInterestsDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HobbiesInterestsDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hobbies = null,
    Object? interests = null,
    Object? sports = null,
    Object? music = null,
  }) {
    return _then(_$HobbiesInterestsDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as String,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String,
      sports: null == sports
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as String,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HobbiesInterestsDetailsImpl implements _HobbiesInterestsDetails {
  const _$HobbiesInterestsDetailsImpl(
      {required this.id,
      required this.userId,
      required this.hobbies,
      required this.interests,
      required this.sports,
      required this.music});

  @override
  final int id;
  @override
  final int userId;
  @override
  final String hobbies;
  @override
  final String interests;
  @override
  final String sports;
  @override
  final String music;

  @override
  String toString() {
    return 'HobbiesInterestsDetails(id: $id, userId: $userId, hobbies: $hobbies, interests: $interests, sports: $sports, music: $music)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HobbiesInterestsDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hobbies, hobbies) || other.hobbies == hobbies) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.sports, sports) || other.sports == sports) &&
            (identical(other.music, music) || other.music == music));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, hobbies, interests, sports, music);

  /// Create a copy of HobbiesInterestsDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HobbiesInterestsDetailsImplCopyWith<_$HobbiesInterestsDetailsImpl>
      get copyWith => __$$HobbiesInterestsDetailsImplCopyWithImpl<
          _$HobbiesInterestsDetailsImpl>(this, _$identity);
}

abstract class _HobbiesInterestsDetails implements HobbiesInterestsDetails {
  const factory _HobbiesInterestsDetails(
      {required final int id,
      required final int userId,
      required final String hobbies,
      required final String interests,
      required final String sports,
      required final String music}) = _$HobbiesInterestsDetailsImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get hobbies;
  @override
  String get interests;
  @override
  String get sports;
  @override
  String get music;

  /// Create a copy of HobbiesInterestsDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HobbiesInterestsDetailsImplCopyWith<_$HobbiesInterestsDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
