import 'package:f1_mobile_frontend_demo/common/app_colors.dart';
import 'package:f1_mobile_frontend_demo/common/sizes.dart';
import 'package:f1_mobile_frontend_demo/common/spacings.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/f1/f1_bloc.dart';
import 'package:f1_mobile_frontend_demo/core/utils/app_image_factory.dart';
import 'package:f1_mobile_frontend_demo/core/utils/app_text_styles.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/localized_context.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/text_style_extension.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:fl_chart/fl_chart.dart';
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
            } else {
              final Map<String, int> seasonCounts =
                  _countOccurrences(races!, (race) => race.season ?? 'Unknown');
              final Map<String, int> circuitCounts = _countOccurrences(
                  races, (race) => race.circuit?.circuitName ?? 'Unknown');
              final Map<String, int> countryCounts = _countOccurrences(races,
                  (race) => race.circuit?.location?.country ?? 'Unknown');
              final Map<String, int> raceCounts =
                  _countOccurrences(races, (race) => race.url ?? 'Unknown');

              return Column(
                children: [
                  _buildPieChart(countryCounts),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _valueCountWidget(
                        context,
                        seasonCounts,
                        context.loc.seasonCount,
                      ),
                      _valueCountWidget(
                        context,
                        circuitCounts,
                        context.loc.circuitCount,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _valueCountWidget(
                        context,
                        countryCounts,
                        context.loc.countryCount,
                      ),
                      _valueCountWidget(
                        context,
                        raceCounts,
                        context.loc.raceCount,
                      ),
                    ],
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }

  Widget _buildPieChart(Map<String, int> countryCounts) {
    final sortedCountries = countryCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final topCountries = sortedCountries.take(5).toList();

    final colors = [
      AppColors.primaryGreen300,
      AppColors.primaryBlue800,
      AppColors.primaryRed300,
      AppColors.primaryRed600,
      AppColors.primaryOrange300,
    ];

    final pieChartData = topCountries.map((entry) {
      final color = colors[topCountries.indexOf(entry)];
      return PieChartSectionData(
        color: color,
        value: entry.value.toDouble(),
        showTitle: false,
        radius: 60,
      );
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(vertical: verticalMediumSpacing),
      height: 150.h,
      child: Row(
        children: [
          Expanded(
            child: PieChart(
              PieChartData(
                sections: pieChartData,
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 0,
                sectionsSpace: 2,
              ),
            ),
          ),
          SizedBox(width: 20.w),
          SizedBox(
            width: 150.w,
            height: 200.h,
            child: _buildPieChartLegend(topCountries, colors),
          ),
        ],
      ),
    );
  }

  Widget _buildPieChartLegend(
      List<MapEntry<String, int>> topCountries, List<Color> colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: topCountries.map((entry) {
        final color = colors[topCountries.indexOf(entry)];

        return Row(
          children: [
            Container(
              width: 20.w,
              height: 20.h,
              color: color,
            ),
            SizedBox(width: 10.w),
            Text(
              '${entry.key}: ${entry.value}',
              style: AppTextStyles.body1.copyWith(color: Colors.white),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _valueCountWidget(
    BuildContext context,
    Map<String, int> data,
    String title,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalMediumSpacing,
      ),
      child: Container(
        width: 150.w,
        height: 150.h,
        decoration: BoxDecoration(
          color: AppColors.primaryGreen300,
          borderRadius: BorderRadius.all(
            Radius.circular(mediumBorderRadius),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyles.body1.bold,
            ),
            Text(
              data.entries.toList().length.toString(),
              style: AppTextStyles.body1.bold,
            ),
          ],
        ),
      ),
    );
  }

  Map<String, int> _countOccurrences(
      List<Race> races, String Function(Race) getKey) {
    Map<String, int> counts = {};
    for (var race in races) {
      String key = getKey(race);
      counts[key] = (counts[key] ?? 0) + 1;
    }
    return counts;
  }
}
