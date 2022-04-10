import 'package:json_annotation/json_annotation.dart';

part 'ws_subscribe_model.g.dart';

@JsonSerializable()
class WSSubscribeModel {
  String? action;
  List<String>? trades;
  List<String>? quotes;
  List<String>? bars;

  WSSubscribeModel({this.action, this.trades, this.quotes, this.bars});

  factory WSSubscribeModel.fromJson(Map<String, dynamic> json) {
    return _$WSSubscribeModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WSSubscribeModelToJson(this);
  }
}
