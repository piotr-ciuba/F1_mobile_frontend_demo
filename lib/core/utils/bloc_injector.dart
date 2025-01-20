import 'package:f1_mobile_frontend_demo/core/blocs/app_settings/app_settings_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/f1/f1_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/navigation_bar/navigation_bar_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/settings_repository.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/core/services/settings_service.dart';
import 'package:f1_mobile_frontend_demo/core/utils/dependency_injection/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocInjector extends StatelessWidget {
  BlocInjector({
    super.key,
    required this.child,
  });

  final Widget child;

  final F1Repository _f1Repository =
      serviceLocator.get<F1Repository>(param1: serviceLocator.get<F1Service>());
  final SettingsRepository _settingsRepository = serviceLocator
      .get<SettingsRepository>(param1: serviceLocator.get<SettingsService>());

  final F1Bloc _f1Bloc = serviceLocator.get<F1Bloc>();
  final AppSettingsBloc _appSettingsBloc =
      serviceLocator.get<AppSettingsBloc>();
  final NavigationBarBloc _navigationBarBloc =
      serviceLocator.get<NavigationBarBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _f1Repository),
        RepositoryProvider.value(value: _settingsRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: _f1Bloc),
          BlocProvider.value(value: _appSettingsBloc),
          BlocProvider.value(value: _navigationBarBloc),
        ],
        child: child,
      ),
    );
  }
}
