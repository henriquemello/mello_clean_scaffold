import 'package:clean_mello/modules/pets/data/models/pet_model.dart';

abstract class PetDatasource{
  Future<List<PetModel>> getPetsFromRemote();
}