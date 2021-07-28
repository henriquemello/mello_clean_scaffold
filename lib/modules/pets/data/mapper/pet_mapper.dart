
import 'package:clean_mello/modules/pets/data/models/pet_model.dart';
import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PetMapper {
  PetEntity toEntity(PetModel model) {
    return PetEntity(
      nome: model.name,
    );
  }
}
