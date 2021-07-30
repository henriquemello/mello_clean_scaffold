import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: false)
class UserModel {
  final String? name;

  UserModel({
    this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static List<UserModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => UserModel.fromJson(i)).toList();
}
