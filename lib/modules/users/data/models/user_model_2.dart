import 'package:clean_mello/modules/users/domain/entity/user_entity.dart';

class UserModel2 {
  final String name;
  final String email;

  UserModel2({
    this.name,
    this.email,
  });

  factory UserModel2.fromJson(Map<String, dynamic> json) {
    return UserModel2(
      name: json["name"],
      email: json["email"],
    );
  }

  static List<UserModel2> fromJsonList(List<dynamic> json) =>
      json.map((i) => UserModel2.fromJson(i)).toList() ?? [];

  UserEntity toEntity() => UserEntity(
        nome: this.name,
        email: this.email,
      );
}
