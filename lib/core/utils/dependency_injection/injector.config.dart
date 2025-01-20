// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../common/endpoints.dart' as _i487;
import '../../blocs/app_settings/app_settings_bloc.dart' as _i692;
import '../../blocs/f1/f1_bloc.dart' as _i589;
import '../../blocs/navigation_bar/navigation_bar_bloc.dart' as _i131;
import '../../repositories/f1_repository.dart' as _i35;
import '../../repositories/settings_repository.dart' as _i101;
import '../../services/f1_service.dart' as _i177;
import '../../services/settings_service.dart' as _i583;
import '../api_client.dart' as _i1008;
import 'injector_module.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.provideSharedPrefs(),
      preResolve: true,
    );
    gh.singleton<_i361.Dio>(() => registerModule.provideDio());
    gh.singleton<_i487.Endpoints>(() => registerModule.provideEndpoints());
    gh.singleton<_i131.NavigationBarBloc>(() => _i131.NavigationBarBloc());
    gh.singleton<_i583.SettingsService>(
        () => _i583.SettingsService(gh<_i460.SharedPreferences>()));
    gh.singleton<_i1008.ApiClient>(() => _i1008.ApiClient(
          dio: gh<_i361.Dio>(),
          endpoints: gh<_i487.Endpoints>(),
        ));
    gh.singleton<_i177.F1Service>(
        () => _i177.F1Service(gh<_i1008.ApiClient>()));
    gh.factory<_i101.SettingsRepository>(
        () => _i101.SettingsRepository(gh<_i583.SettingsService>()));
    gh.factory<_i35.F1Repository>(
        () => _i35.F1Repository(gh<_i177.F1Service>()));
    gh.singleton<_i692.AppSettingsBloc>(() => _i692.AppSettingsBloc(
        settingsRepository: gh<_i101.SettingsRepository>()));
    gh.singleton<_i589.F1Bloc>(
        () => _i589.F1Bloc(f1Repository: gh<_i35.F1Repository>()));
    return this;
  }
}

class _$RegisterModule extends _i526.RegisterModule {}
