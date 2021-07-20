import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:clean_mello/modules/pets/domain/repository/pet_repository.dart';
import 'package:injectable/injectable.dart';

mixin GetPetsUsecase {
  Future<List<PetEntity>> call();
}

@LazySingleton(as: GetPetsUsecase)
class GetPetsUsecaseImpl implements GetPetsUsecase {
  final PetRepository petRepository;

  GetPetsUsecaseImpl(this.petRepository);

  Future<List<PetEntity>> call() async {
    return await petRepository.getPets();
  }
}
