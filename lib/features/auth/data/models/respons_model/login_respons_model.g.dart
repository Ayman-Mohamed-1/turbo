// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_respons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponsModel _$LoginResponsModelFromJson(Map<String, dynamic> json) =>
    LoginResponsModel(
      accessToken: json['accessToken'] as String?,
      expiresAtUtc: json['expiresAtUtc'] == null
          ? null
          : DateTime.parse(json['expiresAtUtc'] as String),
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$LoginResponsModelToJson(LoginResponsModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresAtUtc': instance.expiresAtUtc?.toIso8601String(),
      'refreshToken': instance.refreshToken,
    };
