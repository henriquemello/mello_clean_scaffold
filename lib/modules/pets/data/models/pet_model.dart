import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable(createToJson: false)
class PetModel {
  final String name;

  PetModel({
    this.name,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  static List<PetModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => PetModel.fromJson(i)).toList() ?? [];
}
