import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';

abstract class PetPresenter {
  Future<List<PetEntity>> getPets();
}
