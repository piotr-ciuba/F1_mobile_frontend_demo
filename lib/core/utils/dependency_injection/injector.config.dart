// dart format width=80
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

import '../../../common/endpoints.dart' as _i487;
import '../../repositories/f1_repository.dart' as _i35;
import '../../services/f1_service.dart' as _i177;
import '../api_client.dart' as _i1008;
import 'injector_module.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i361.Dio>(() => registerModule.provideDio());
    gh.singleton<_i487.Endpoints>(() => registerModule.provideEndpoints());
    gh.singleton<_i1008.ApiClient>(() => _i1008.ApiClient(
          dio: gh<_i361.Dio>(),
          endpoints: gh<_i487.Endpoints>(),
        ));
    gh.singleton<_i177.F1Service>(
        () => _i177.F1Service(gh<_i1008.ApiClient>()));
    gh.singleton<_i35.F1Repository>(
        () => _i35.F1Repository(gh<_i177.F1Service>()));
    return this;
  }
}

class _$RegisterModule extends _i526.RegisterModule {}
