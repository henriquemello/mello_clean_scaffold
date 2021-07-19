import 'package:clean_mello/modules/pets/data/datasource/pet_datasource.dart';
import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:clean_mello/modules/pets/domain/repository/pet_repository.dart';

class PetRepositoryImpl implements PetRepository {
  final PetDatasource petDatasource;

  PetRepositoryImpl(this.petDatasource);

  @override
  Future<List<PetEntity>> getPets() async {
    final listPetModels = await petDatasource.getPetsFromRemote();

    final listPetEntities = listPetModels.map((e) => e.toEntity(e)).toList();
    return listPetEntities;
  }
}
