// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeasonTableImpl _$$SeasonTableImplFromJson(Map<String, dynamic> json) =>
    _$SeasonTableImpl(
      seasons: (json['Seasons'] as List<dynamic>?)
          ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SeasonTableImplToJson(_$SeasonTableImpl instance) =>
    <String, dynamic>{
      'Seasons': instance.seasons,
    };
