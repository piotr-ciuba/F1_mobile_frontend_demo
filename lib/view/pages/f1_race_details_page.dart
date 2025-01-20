import 'package:f1_mobile_frontend_demo/common/app_colors.dart';
import 'package:f1_mobile_frontend_demo/core/blocs/app_settings/app_settings_bloc.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/localized_context.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum _RaceDataType {
  season,
  round,
  raceUrl,
  raceName,
  circuitId,
  circuitUrl,
  circuitName,
  locality,
  country,
  date
}

class F1RaceDetailsPage extends StatelessWidget {
  const F1RaceDetailsPage({
    super.key,
    required this.race,
  });

  final Race race;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.raceDetails),
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue800.withAlpha(50),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () => _switchLanguage(context),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildDataTile(context, _RaceDataType.season),
              Divider(),
              _buildDataTile(context, _RaceDataType.date),
              Divider(),
              _buildDataTile(context, _RaceDataType.round),
              Divider(),
              _buildDataTile(context, _RaceDataType.raceName),
              Divider(),
              _buildDataTile(context, _RaceDataType.circuitId),
              Divider(),
              _buildDataTile(context, _RaceDataType.circuitName),
              Divider(),
              _buildDataTile(context, _RaceDataType.country),
              Divider(),
              _buildDataTile(context, _RaceDataType.locality),
              Divider(),
              _buildDataTile(context, _RaceDataType.raceUrl),
              Divider(),
              _buildDataTile(context, _RaceDataType.circuitUrl),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataTile(BuildContext context, _RaceDataType type) {
    switch (type) {
      case _RaceDataType.season:
        return ListTile(
          title: Text(context.loc.season),
          subtitle: Text(race.season ?? ''),
        );
      case _RaceDataType.date:
        return ListTile(
          title: Text(context.loc.date),
          subtitle: Text(race.date ?? ''),
        );
      case _RaceDataType.round:
        return ListTile(
          title: Text(context.loc.round),
          subtitle: Text(race.round ?? ''),
        );
      case _RaceDataType.raceName:
        return ListTile(
          title: Text(context.loc.raceName),
          subtitle: Text(race.raceName ?? ''),
        );
      case _RaceDataType.raceUrl:
        return ListTile(
          title: Text(context.loc.raceUrl),
          subtitle: Text(race.url ?? ''),
        );
      case _RaceDataType.circuitId:
        return ListTile(
          title: Text(context.loc.circuit),
          subtitle: Text(race.circuit?.circuitId ?? ''),
        );
      case _RaceDataType.circuitUrl:
        return ListTile(
          title: Text(context.loc.circuitUrl),
          subtitle: Text(race.circuit?.url ?? ''),
        );
      case _RaceDataType.circuitName:
        return ListTile(
          title: Text(context.loc.circuitName),
          subtitle: Text(race.circuit?.circuitName ?? ''),
        );
      case _RaceDataType.country:
        return ListTile(
          title: Text(context.loc.country),
          subtitle: Text(race.circuit?.location?.country ?? ''),
        );
      case _RaceDataType.locality:
        return ListTile(
          title: Text(context.loc.locality),
          subtitle: Text(race.circuit?.location?.locality ?? ''),
        );
    }
  }

  void _switchLanguage(BuildContext context) {
    String langCode = context.read<AppSettingsBloc>().state.languageCode;

    if (langCode == 'en') {
      context.read<AppSettingsBloc>().add(ChangeLanguageEvent('pl'));
    } else {
      context.read<AppSettingsBloc>().add(ChangeLanguageEvent('en'));
    }
  }
}
