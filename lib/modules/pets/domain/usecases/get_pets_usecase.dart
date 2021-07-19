import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:clean_mello/modules/pets/domain/repository/pet_repository.dart';

class GetPetsUsecase {
  final PetRepository petRepository;

  GetPetsUsecase(this.petRepository);

  Future<List<PetEntity>> call() async {
    return await petRepository.getPets();
  }
}
