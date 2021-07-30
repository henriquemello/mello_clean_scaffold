// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../users/data/datasource/user_datasource.dart' as _i6;
import '../users/data/mapper/user_mapper.dart' as _i8;
import '../users/data/repository/user_repository_impl.dart' as _i10;
import '../users/domain/repository/user_repository.dart' as _i9;
import '../users/domain/usecases/get_users_usecase.dart' as _i13;
import '../users/presentation/pages/user_page.dart' as _i12;
import '../users/presentation/stores/user_store.dart' as _i11;
import '../users/presentation/user_controller.dart' as _i16;
import '../users/presentation/user_presenter.dart' as _i14;
import '../users/presentation/user_presenter_impl.dart' as _i15;
import '../users/remote/user_datasource_impl.dart' as _i7;
import 'modules.dart' as _i17;
import 'modules/http/dio_adapter_impl.dart' as _i5;
import 'modules/http/http_adapter.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  gh.factory<_i3.Dio>(() => dioModule.getInstance());
  gh.lazySingleton<_i4.HttpAdapter>(
      () => _i5.DioAdapterImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.UserDatasource>(
      () => _i7.UserDatasourceImpl(get<_i4.HttpAdapter>()));
  gh.lazySingleton<_i8.UserMapper>(() => _i8.UserMapper());
  gh.lazySingleton<_i9.UserRepository>(() => _i10.UserRepositoryImpl(
      get<_i6.UserDatasource>(), get<_i8.UserMapper>()));
  gh.factory<_i11.UserStore>(() => _i11.UserStore());
  gh.lazySingleton<_i12.UsersPage>(() => _i12.UsersPage());
  gh.lazySingleton<_i13.GetUsersUsecase>(
      () => _i13.GetUsersUsecaseImpl(get<_i9.UserRepository>()));
  gh.lazySingleton<_i14.UserPresenter>(
      () => _i15.UserPresenterImple(get<_i13.GetUsersUsecase>()));
  gh.lazySingleton<_i16.UserController>(() =>
      _i16.UserController(get<_i14.UserPresenter>(), get<_i11.UserStore>()));
  return get;
}

class _$DioModule extends _i17.DioModule {}
