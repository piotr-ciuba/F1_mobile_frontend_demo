import 'package:f1_mobile_frontend_demo/common/app_colors.dart';
import 'package:f1_mobile_frontend_demo/common/sizes.dart';
import 'package:f1_mobile_frontend_demo/common/spacings.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/f1/f1_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/utils/app_image_factory.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/localized_context.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class F1DashboardPage extends StatelessWidget {
  const F1DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          _buildF1Logo(),
          _buildDashboard(),
        ],
      ),
    );
  }

  Widget _buildF1Logo() {
    return Center(
      child: SizedBox(
        width: 200.w,
        height: 200.h,
        child: AppImageFactory.svgF1Logo(),
      ),
    );
  }

  Widget _buildDashboard() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalSmallSpacing,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryBlue800.withAlpha(50),
            borderRadius: BorderRadius.circular(largeBorderRadius),
          ),
          child: Builder(builder: (context) {
            final List<Race>? races =
                context.watch<F1Bloc>().state.mrData?.raceTable?.races;

            final int itemCount = races != null ? races.length : 0;

            if (itemCount == 0) {
              return Center(
                child: Text(context.loc.downloadToSeeDashboard),
              );
            } else
              return Container();
          }),
        ),
      ),
    );
  }
}
