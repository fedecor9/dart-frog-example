// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseUser _$$BaseUserFromJson(Map<String, dynamic> json) => _$BaseUser(
      name: json['name'] as String,
      id: json['id'] as String? ?? '',
      email: json['email'] as String,
      password: json['password'] as String?,
      personalData: (json['personalData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BaseUserToJson(_$BaseUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'personalData': instance.personalData,
      'runtimeType': instance.$type,
    };

_$UserRequest _$$UserRequestFromJson(Map<String, dynamic> json) =>
    _$UserRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserRequestToJson(_$UserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$UserResponse _$$UserResponseFromJson(Map<String, dynamic> json) =>
    _$UserResponse(
      name: json['name'] as String,
      id: json['id'] as String,
      email: json['email'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserResponseToJson(_$UserResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
      'runtimeType': instance.$type,
    };
