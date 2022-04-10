// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WSSubscribeModel _$WSSubscribeModelFromJson(Map<String, dynamic> json) =>
    WSSubscribeModel(
      action: json['action'] as String?,
      trades:
          (json['trades'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quotes:
          (json['quotes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      bars: (json['bars'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$WSSubscribeModelToJson(WSSubscribeModel instance) =>
    <String, dynamic>{
      'action': instance.action,
      'trades': instance.trades,
      'quotes': instance.quotes,
      'bars': instance.bars,
    };
