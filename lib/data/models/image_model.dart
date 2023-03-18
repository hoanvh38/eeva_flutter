import 'package:eeva/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';
@JsonSerializable(explicitToJson: true)
class ImageModel extends BaseModel {
  @JsonKey(defaultValue: 0)
  double width;

  @JsonKey(defaultValue: 0)
  double height;

  @JsonKey(defaultValue: '')
  String url;

  @JsonKey(defaultValue: '')
  String type;


  ImageModel({this.width = 0, this.height = 0, this.url = '', this.type = ''});

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}