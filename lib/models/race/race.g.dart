// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RaceImpl _$$RaceImplFromJson(Map<String, dynamic> json) => _$RaceImpl(
      season: json['season'] as String?,
      round: json['round'] as String?,
      url: json['url'] as String?,
      raceName: json['raceName'] as String?,
      circuit: json['Circuit'] == null
          ? null
          : Circuit.fromJson(json['Circuit'] as Map<String, dynamic>),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$RaceImplToJson(_$RaceImpl instance) =>
    <String, dynamic>{
      'season': instance.season,
      'round': instance.round,
      'url': instance.url,
      'raceName': instance.raceName,
      'Circuit': instance.circuit,
      'date': instance.date,
    };
