import 'package:f1_mobile_frontend_demo/common/routes.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/app_settings/app_settings_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/utils/bloc_injector.dart';
import 'package:f1_mobile_frontend_demo/core/utils/dependency_injection/injector.dart';
import 'package:f1_mobile_frontend_demo/core/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injectorSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocInjector(
      child: ScreenUtilInit(
        designSize: const Size(402, 874),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(context.watch<AppSettingsBloc>().state.languageCode),
            initialRoute: Routes.homeRoute,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}
