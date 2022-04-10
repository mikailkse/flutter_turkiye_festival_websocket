// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WSResponseModel _$WSResponseModelFromJson(Map<String, dynamic> json) =>
    WSResponseModel(
      s: (json['s'] as num?)?.toDouble(),
      x: json['x'] as String?,
      bp: (json['bp'] as num?)?.toDouble(),
      bs: (json['bs'] as num?)?.toDouble(),
      ap: (json['ap'] as num?)?.toDouble(),
      as: (json['as'] as num?)?.toDouble(),
      T: json['T'] as String?,
    );

Map<String, dynamic> _$WSResponseModelToJson(WSResponseModel instance) =>
    <String, dynamic>{
      'T': instance.T,
      's': instance.s,
      'x': instance.x,
      'bp': instance.bp,
      'bs': instance.bs,
      'ap': instance.ap,
      'as': instance.as,
    };
