import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable(createToJson: false)
class PetModel {
  final String nomeCompletoPet;

  PetModel({
    this.nomeCompletoPet,
  });

  PetEntity toEntity(PetModel model) {
    return PetEntity(
      nome: model.nomeCompletoPet,
    );
  }

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  static List<PetModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => PetModel.fromJson(i)).toList() ?? [];
}
