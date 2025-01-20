import 'package:f1_mobile_frontend_demo/common/app_colors.dart';
import 'package:f1_mobile_frontend_demo/common/sizes.dart';
import 'package:f1_mobile_frontend_demo/common/spacings.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/f1/f1_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/utils/app_image_factory.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class F1DetailsPage extends StatelessWidget {
  const F1DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 200.w,
              height: 200.h,
              child: AppImageFactory.svgF1Logo(),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
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
                  final f1Bloc = context.read<F1Bloc>();
                  final List<Race>? races =
                      context.watch<F1Bloc>().state.mrData?.raceTable?.races;
                  final int pageLimit = context.watch<F1Bloc>().state.pageSize;

                  return _f1RacesListView(races, pageLimit, f1Bloc);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView _f1RacesListView(List<Race>? races, int pageLimit, F1Bloc f1Bloc) {
    return ListView.builder(
      itemCount: races != null ? races.length : pageLimit,
      itemBuilder: (context, index) {
        return ListTile(
          title: races != null
              ? Text(races[index].raceName ?? '')
              : Text('Item $index'),
          leading: GestureDetector(
            onTap: () async {
              f1Bloc.add(
                FetchF1RacesEvent(pageLimit: pageLimit),
              );
            },
            child: const Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
