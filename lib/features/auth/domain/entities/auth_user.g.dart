// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      id: (json['id'] as num).toInt(),
      userName: json['userName'] as String,
      dateOfBirth: _dateFromJson(json['dateOfBirth'] as String),
      gender: json['gender'] as String,
      isVerifiedFlag: json['isVerifiedFlag'] as bool,
      jwtToken: json['jwtToken'] as String?,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'dateOfBirth': _dateToJson(instance.dateOfBirth),
      'gender': instance.gender,
      'isVerifiedFlag': instance.isVerifiedFlag,
      'jwtToken': instance.jwtToken,
    };
