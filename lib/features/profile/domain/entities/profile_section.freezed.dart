// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileSection _$ProfileSectionFromJson(Map<String, dynamic> json) {
  return _ProfileSection.fromJson(json);
}

/// @nodoc
mixin _$ProfileSection {
  String get title => throw _privateConstructorUsedError;
  Map<String, String> get details => throw _privateConstructorUsedError;
  bool get isEditable => throw _privateConstructorUsedError;

  /// Serializes this ProfileSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileSectionCopyWith<ProfileSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSectionCopyWith<$Res> {
  factory $ProfileSectionCopyWith(
          ProfileSection value, $Res Function(ProfileSection) then) =
      _$ProfileSectionCopyWithImpl<$Res, ProfileSection>;
  @useResult
  $Res call({String title, Map<String, String> details, bool isEditable});
}

/// @nodoc
class _$ProfileSectionCopyWithImpl<$Res, $Val extends ProfileSection>
    implements $ProfileSectionCopyWith<$Res> {
  _$ProfileSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? details = null,
    Object? isEditable = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSectionImplCopyWith<$Res>
    implements $ProfileSectionCopyWith<$Res> {
  factory _$$ProfileSectionImplCopyWith(_$ProfileSectionImpl value,
          $Res Function(_$ProfileSectionImpl) then) =
      __$$ProfileSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Map<String, String> details, bool isEditable});
}

/// @nodoc
class __$$ProfileSectionImplCopyWithImpl<$Res>
    extends _$ProfileSectionCopyWithImpl<$Res, _$ProfileSectionImpl>
    implements _$$ProfileSectionImplCopyWith<$Res> {
  __$$ProfileSectionImplCopyWithImpl(
      _$ProfileSectionImpl _value, $Res Function(_$ProfileSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? details = null,
    Object? isEditable = null,
  }) {
    return _then(_$ProfileSectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSectionImpl implements _ProfileSection {
  const _$ProfileSectionImpl(
      {required this.title,
      required final Map<String, String> details,
      required this.isEditable})
      : _details = details;

  factory _$ProfileSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileSectionImplFromJson(json);

  @override
  final String title;
  final Map<String, String> _details;
  @override
  Map<String, String> get details {
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_details);
  }

  @override
  final bool isEditable;

  @override
  String toString() {
    return 'ProfileSection(title: $title, details: $details, isEditable: $isEditable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_details), isEditable);

  /// Create a copy of ProfileSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSectionImplCopyWith<_$ProfileSectionImpl> get copyWith =>
      __$$ProfileSectionImplCopyWithImpl<_$ProfileSectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSectionImplToJson(
      this,
    );
  }
}

abstract class _ProfileSection implements ProfileSection {
  const factory _ProfileSection(
      {required final String title,
      required final Map<String, String> details,
      required final bool isEditable}) = _$ProfileSectionImpl;

  factory _ProfileSection.fromJson(Map<String, dynamic> json) =
      _$ProfileSectionImpl.fromJson;

  @override
  String get title;
  @override
  Map<String, String> get details;
  @override
  bool get isEditable;

  /// Create a copy of ProfileSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSectionImplCopyWith<_$ProfileSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
