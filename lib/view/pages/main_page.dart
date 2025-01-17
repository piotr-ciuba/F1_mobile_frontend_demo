import 'package:f1_mobile_frontend_demo/core/blocs/navigation_bar/navigation_bar_bloc.dart';
import 'package:f1_mobile_frontend_demo/view/pages/f1_dashboard_page.dart';
import 'package:f1_mobile_frontend_demo/view/pages/f1_details_page.dart';
import 'package:f1_mobile_frontend_demo/view/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<Widget> get _pages => const [
        F1DetailsPage(),
        F1DashboardPage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<NavigationBarBloc>().state.selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
