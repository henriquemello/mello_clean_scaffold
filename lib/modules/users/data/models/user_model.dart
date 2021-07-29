import 'package:clean_mello/modules/users/data/models/address_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final String name;
  final String email;
  final AddressModel address;

  UserModel({this.name, this.email, this.address});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static List<UserModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => UserModel.fromJson(i)).toList() ?? [];

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
