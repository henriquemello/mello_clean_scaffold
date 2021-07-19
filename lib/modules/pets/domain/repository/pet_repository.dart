import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';

abstract class PetRepository{
  Future<List<PetEntity>> getPets();
}