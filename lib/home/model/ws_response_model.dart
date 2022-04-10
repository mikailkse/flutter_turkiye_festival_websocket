import 'package:json_annotation/json_annotation.dart';

part 'ws_response_model.g.dart';

@JsonSerializable()
class WSResponseModel {
  String? T;
  double? s;
  String? x;
  double? bp;
  double? bs;
  double? ap;
  double? as;

  WSResponseModel({this.s, this.x, this.bp, this.bs, this.ap, this.as, this.T});

  factory WSResponseModel.fromJson(Map<String, dynamic> json) {
    return _$WSResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WSResponseModelToJson(this);
  }
}
