import 'package:json_annotation/json_annotation.dart';

part 'ws_response_model.g.dart';

@JsonSerializable()
class WSResponseModel {
  @JsonKey(name: 'S')
  String? S;
  String? x;
  double? bp;
  double? bs;
  double? ap;
  double? as;
  String? t;

  WSResponseModel({this.S, this.x, this.bp, this.bs, this.ap, this.as, this.t});

  factory WSResponseModel.fromJson(Map<String, dynamic> json) {
    return _$WSResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WSResponseModelToJson(this);
  }
}
