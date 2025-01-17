import 'package:f1_mobile_frontend_demo/core/utils/dependency_injection/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void injectorSetup() => serviceLocator.init();
