import 'package:clean_mello/modules/pets/domain/entity/pet_entity.dart';
import 'package:clean_mello/modules/pets/domain/usecases/get_pets_usecase.dart';
import 'package:clean_mello/modules/pets/presentation/pet_presenter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PetPresenter)
class PetPresenterImple implements PetPresenter {
  final GetPetsUsecase getPetsUsecase;

  PetPresenterImple(this.getPetsUsecase);

  @override
  Future<List<PetEntity>> getPets() {
    return getPetsUsecase();
  }
}
