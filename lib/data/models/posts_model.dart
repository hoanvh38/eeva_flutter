import 'package:eeva/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'image_model.dart';
part 'posts_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PostModel extends BaseModel {
  @JsonKey(defaultValue: '')
  String id;

  @JsonKey(defaultValue: '')
  String title;

  @JsonKey(defaultValue: '')
  String content;

  @JsonKey(defaultValue: '')
  String category;

  DateTime? createdAt;

  ImageModel? avatar;

  PostModel(
      {this.id = '',
      this.title = '',
      this.content = '',
      this.category = '',
      this.avatar,
      this.createdAt});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
