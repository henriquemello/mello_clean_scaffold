// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../pets/data/datasource/pet_datasource.dart' as _i3;
import '../pets/data/repository/pet_repository.dart' as _i7;
import '../pets/domain/repository/pet_repository.dart' as _i6;
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
  return get;
}
