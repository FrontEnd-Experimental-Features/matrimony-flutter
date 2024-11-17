// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileSectionImpl _$$ProfileSectionImplFromJson(Map<String, dynamic> json) =>
    _$ProfileSectionImpl(
      title: json['title'] as String,
      details: Map<String, String>.from(json['details'] as Map),
      isEditable: json['isEditable'] as bool,
    );

Map<String, dynamic> _$$ProfileSectionImplToJson(
        _$ProfileSectionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'isEditable': instance.isEditable,
    };
