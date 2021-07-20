// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../pets/data/datasource/pet_datasource.dart' as _i3;
import '../pets/data/repository/pet_repository.dart' as _i7;
import '../pets/domain/repository/pet_repository.dart' as _i6;
import '../pets/domain/usecases/get_pets_usecase.dart' as _i9;
import '../pets/presentation/pet_controller.dart' as _i12;
import '../pets/presentation/pet_presenter.dart' as _i10;
import '../pets/presentation/pet_presenter_impl.dart' as _i11;
import '../pets/presentation/stores/pet_store.dart' as _i8;
import '../pets/remote/pet_datasource_impl.dart' as _i4;
import 'modules/http/http_adapter.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.PetDatasource>(
      () => _i4.PetDatasourceImpl(get<_i5.HttpAdapter>()));
  gh.lazySingleton<_i6.PetRepository>(
      () => _i7.PetRepositoryImpl(get<_i3.PetDatasource>()));
  gh.factory<_i8.PetStore>(() => _i8.PetStore());
  gh.lazySingleton<_i9.GetPetsUsecase>(
      () => _i9.GetPetsUsecaseImpl(get<_i6.PetRepository>()));
  gh.lazySingleton<_i10.PetPresenter>(
      () => _i11.PetPresenterImple(get<_i9.GetPetsUsecase>()));
  gh.lazySingleton<_i12.PetController>(
      () => _i12.PetController(get<_i10.PetPresenter>(), get<_i8.PetStore>()));
  return get;
}
