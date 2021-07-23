
import 'package:clean_mello/modules/pets/data/models/pet_model.dart';
import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';

class PetMapper {
  PetEntity toEntity(PetModel model) {
    return PetEntity(
      nome: model.nomeCompletoPet,
    );
  }
}
