// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WSResponseModel _$WSResponseModelFromJson(Map<String, dynamic> json) =>
    WSResponseModel(
      S: json['S'] as String?,
      x: json['x'] as String?,
      bp: (json['bp'] as num?)?.toDouble(),
      bs: (json['bs'] as num?)?.toDouble(),
      ap: (json['ap'] as num?)?.toDouble(),
      as: (json['as'] as num?)?.toDouble(),
      t: json['t'] as String?,
    );

Map<String, dynamic> _$WSResponseModelToJson(WSResponseModel instance) =>
    <String, dynamic>{
      'S': instance.S,
      'x': instance.x,
      'bp': instance.bp,
      'bs': instance.bs,
      'ap': instance.ap,
      'as': instance.as,
      't': instance.t,
    };
