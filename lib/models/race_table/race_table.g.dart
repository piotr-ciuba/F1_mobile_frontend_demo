// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RaceTableImpl _$$RaceTableImplFromJson(Map<String, dynamic> json) =>
    _$RaceTableImpl(
      races: (json['Races'] as List<dynamic>?)
          ?.map((e) => Race.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RaceTableImplToJson(_$RaceTableImpl instance) =>
    <String, dynamic>{
      'Races': instance.races?.map((e) => e.toJson()).toList(),
    };
