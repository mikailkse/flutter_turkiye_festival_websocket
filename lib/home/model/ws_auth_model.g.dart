// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WSAuthModel _$WSAuthModelFromJson(Map<String, dynamic> json) => WSAuthModel(
      action: json['action'] as String?,
      key: json['key'] as String?,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$WSAuthModelToJson(WSAuthModel instance) =>
    <String, dynamic>{
      'action': instance.action,
      'key': instance.key,
      'secret': instance.secret,
    };
