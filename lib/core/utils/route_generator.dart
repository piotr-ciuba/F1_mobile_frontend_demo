import 'package:f1_mobile_frontend_demo/common/routes.dart';
import 'package:f1_mobile_frontend_demo/core/utils/bloc_injector.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:f1_mobile_frontend_demo/view/pages/f1_dashboard_page.dart';
import 'package:f1_mobile_frontend_demo/view/pages/f1_race_details_page.dart';
import 'package:f1_mobile_frontend_demo/view/pages/main_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return _pageWithBloc(child: const MainPage());
      case Routes.dashboardRoute:
        return _pageWithBloc(child: const F1DashboardPage());
      case Routes.raceRoute:
        return _pageWithBloc(
          child: F1RaceDetailsPage(race: settings.arguments as Race),
        );

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute<dynamic> _pageWithBloc({required Widget child}) {
    return MaterialPageRoute(
      builder: (context) => BlocInjector(
        child: child,
      ),
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return BlocInjector(
          child: const Scaffold(
            body: Center(
              child: Text('Page not found!'),
            ),
          ),
        );
      },
    );
  }
}
