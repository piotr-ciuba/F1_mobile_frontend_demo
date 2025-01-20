import 'package:f1_mobile_frontend_demo/common/app_colors.dart';
import 'package:f1_mobile_frontend_demo/common/routes.dart';
import 'package:f1_mobile_frontend_demo/common/sizes.dart';
import 'package:f1_mobile_frontend_demo/common/spacings.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/f1/f1_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/utils/app_image_factory.dart';
import 'package:f1_mobile_frontend_demo/core/utils/url_launcher.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/localized_context.dart';
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
          _buildF1Logo(),
          SizedBox(height: 16.h),
          _buildRaceListView(),
          SizedBox(height: 8.h),
          _buildLoadMoreButton(context),
          SizedBox(height: 8.h),
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

  Widget _buildRaceListView() {
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
            final f1Bloc = context.read<F1Bloc>();
            final List<Race>? races =
                context.watch<F1Bloc>().state.mrData?.raceTable?.races;
            final int pageLimit = context.watch<F1Bloc>().state.pageSize;

            return _buildF1RacesListView(races, pageLimit, f1Bloc, context);
          }),
        ),
      ),
    );
  }

  Widget _buildLoadMoreButton(BuildContext context) {
    final int currentLength =
        context.watch<F1Bloc>().state.mrData?.raceTable?.races?.length ?? 0;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalSmallSpacing,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.primaryBlue400),
          ),
          onPressed: () {
            context.read<F1Bloc>().add(
                  FetchF1RacesEvent(
                    pageLimit: context.read<F1Bloc>().state.pageSize,
                    offset: currentLength,
                  ),
                );
          },
          child: currentLength == 0
              ? Text(context.loc.downloadNow)
              : Text(context.loc.loadMore),
        ),
      ),
    );
  }

  Widget _buildF1RacesListView(
    List<Race>? races,
    int pageLimit,
    F1Bloc f1Bloc,
    BuildContext context,
  ) {
    final int itemCount = races != null ? races.length : 0;

    if (itemCount == 0) {
      return Center(
        child: Text(context.loc.nothingHere),
      );
    }

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final Race? race = races?[index];

        return GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.raceRoute,
            arguments: race,
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(race?.raceName ?? ''),
                subtitle: Text(race?.circuit?.circuitName ?? ''),
                leading: Text(race?.season ?? ''),
                trailing: GestureDetector(
                  onTap: () => openInAppWebPage(race?.url ?? ''),
                  child: FittedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                          width: 30.h,
                          child: AppImageFactory.imageWikipediaLogo,
                        ),
                        Text('Wiki'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalMediumSpacing,
                ),
                child: Divider(),
              ),
            ],
          ),
        );
      },
    );
  }
}
