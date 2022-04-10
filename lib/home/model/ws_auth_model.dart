import 'package:json_annotation/json_annotation.dart';

part 'ws_auth_model.g.dart';

@JsonSerializable()
class WSAuthModel {
  String? action;
  String? key;
  String? secret;

  WSAuthModel({this.action, this.key, this.secret});

  factory WSAuthModel.fromJson(Map<String, dynamic> json) {
    return _$WSAuthModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WSAuthModelToJson(this);
  }
}
