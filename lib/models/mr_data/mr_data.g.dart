// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mr_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MrDataImpl _$$MrDataImplFromJson(Map<String, dynamic> json) => _$MrDataImpl(
      xmlns: json['xmlns'] as String?,
      series: json['series'] as String?,
      url: json['url'] as String?,
      limit: json['limit'] as String?,
      offset: json['offset'] as String?,
      total: json['total'] as String?,
      raceTable: json['RaceTable'] == null
          ? null
          : RaceTable.fromJson(json['RaceTable'] as Map<String, dynamic>),
      driverTable: json['DriverTable'] == null
          ? null
          : DriverTable.fromJson(json['DriverTable'] as Map<String, dynamic>),
      circuitTable: json['CircuitTable'] == null
          ? null
          : CircuitTable.fromJson(json['CircuitTable'] as Map<String, dynamic>),
      constructorTable: json['ConstructorTable'] == null
          ? null
          : ConstructorTable.fromJson(
              json['ConstructorTable'] as Map<String, dynamic>),
      seasonTable: json['SeasonTable'] == null
          ? null
          : SeasonTable.fromJson(json['SeasonTable'] as Map<String, dynamic>),
      statusTable: json['StatusTable'] == null
          ? null
          : StatusTable.fromJson(json['StatusTable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MrDataImplToJson(_$MrDataImpl instance) =>
    <String, dynamic>{
      'xmlns': instance.xmlns,
      'series': instance.series,
      'url': instance.url,
      'limit': instance.limit,
      'offset': instance.offset,
      'total': instance.total,
      'RaceTable': instance.raceTable?.toJson(),
      'DriverTable': instance.driverTable?.toJson(),
      'CircuitTable': instance.circuitTable?.toJson(),
      'ConstructorTable': instance.constructorTable?.toJson(),
      'SeasonTable': instance.seasonTable?.toJson(),
      'StatusTable': instance.statusTable?.toJson(),
    };
