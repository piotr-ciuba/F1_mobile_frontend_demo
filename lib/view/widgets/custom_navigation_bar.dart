import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:f1_mobile_frontend_demo/common/sizes.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/navigation_bar/navigation_bar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  List<IconData> get _iconlist {
    return const [
      Icons.home_outlined,
      Icons.analytics_outlined,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: _iconlist,
      activeIndex: context.watch<NavigationBarBloc>().state.selectedIndex,
      activeColor: Theme.of(context).primaryColor,
      gapLocation: GapLocation.none,
      leftCornerRadius: largeBorderRadius,
      rightCornerRadius: largeBorderRadius,
      onTap: (int index) {
        context.read<NavigationBarBloc>().add(
              IndexChangedEvent(index: index),
            );
      },
    );
  }
}
