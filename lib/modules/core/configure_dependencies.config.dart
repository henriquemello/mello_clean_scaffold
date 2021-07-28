// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../pets/data/datasource/pet_datasource.dart' as _i6;
import '../pets/data/mapper/pet_mapper.dart' as _i8;
import '../pets/data/repository/pet_repository.dart' as _i10;
import '../pets/domain/repository/pet_repository.dart' as _i9;
import '../pets/domain/usecases/get_pets_usecase.dart' as _i13;
import '../pets/presentation/pages/pets_page.dart' as _i12;
import '../pets/presentation/pet_controller.dart' as _i16;
import '../pets/presentation/pet_presenter.dart' as _i14;
import '../pets/presentation/pet_presenter_impl.dart' as _i15;
import '../pets/presentation/stores/pet_store.dart' as _i11;
import '../pets/remote/pet_datasource_impl.dart' as _i7;
import 'modules.dart' as _i17;
import 'modules/http/dio_adapter_impl.dart' as _i5;
import 'modules/http/http_adapter.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.factory<_i3.Dio>(() => dioModule.getInstance());
  gh.lazySingleton<_i4.HttpAdapter>(
      () => _i5.DioAdapterImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.PetDatasource>(
      () => _i7.PetDatasourceImpl(get<_i4.HttpAdapter>()));
  gh.lazySingleton<_i8.PetMapper>(() => _i8.PetMapper());
  gh.lazySingleton<_i9.PetRepository>(() =>
      _i10.PetRepositoryImpl(get<_i6.PetDatasource>(), get<_i8.PetMapper>()));
  gh.factory<_i11.PetStore>(() => _i11.PetStore());
  gh.lazySingleton<_i12.PetsPage>(() => _i12.PetsPage());
  gh.lazySingleton<_i13.GetPetsUsecase>(
      () => _i13.GetPetsUsecaseImpl(get<_i9.PetRepository>()));
  gh.lazySingleton<_i14.PetPresenter>(
      () => _i15.PetPresenterImple(get<_i13.GetPetsUsecase>()));
  gh.lazySingleton<_i16.PetController>(
      () => _i16.PetController(get<_i14.PetPresenter>(), get<_i11.PetStore>()));
  return get;
}

class _$DioModule extends _i17.DioModule {}
