// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Test _$$_TestFromJson(Map<String, dynamic> json) => _$_Test(
      username: json['username'] as String,
      password: json['password'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_TestToJson(_$_Test instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'refreshToken': instance.refreshToken,
    };

_$_UserLogin _$$_UserLoginFromJson(Map<String, dynamic> json) => _$_UserLogin(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserLoginToJson(_$_UserLogin instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_AuthCode _$$_AuthCodeFromJson(Map<String, dynamic> json) => _$_AuthCode(
      authToken: json['authToken'] as String,
    );

Map<String, dynamic> _$$_AuthCodeToJson(_$_AuthCode instance) =>
    <String, dynamic>{
      'authToken': instance.authToken,
    };
