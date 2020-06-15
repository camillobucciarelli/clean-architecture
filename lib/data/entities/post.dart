

import 'package:flutterexercise/core/utilities/response_wrapper/serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post extends Serializable{

  int userId;
  int id;
  String title;
  String body;

  Post(this.userId,this.id,this.title,this.body);

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  String toString() =>
      '{userId: $userId, id: $id, title: $title, body:$body}';


}