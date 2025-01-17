// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      number: json['number'] as String?,
      position: json['position'] as String?,
      positionText: json['positionText'] as String?,
      points: json['points'] as String?,
      driver: json['Driver'] == null
          ? null
          : Driver.fromJson(json['Driver'] as Map<String, dynamic>),
      constructor: json['Constructor'] == null
          ? null
          : Constructor.fromJson(json['Constructor'] as Map<String, dynamic>),
      grid: json['grid'] as String?,
      laps: json['laps'] as String?,
      status: json['status'] as String?,
      time: json['Time'] == null
          ? null
          : Time.fromJson(json['Time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'position': instance.position,
      'positionText': instance.positionText,
      'points': instance.points,
      'Driver': instance.driver,
      'Constructor': instance.constructor,
      'grid': instance.grid,
      'laps': instance.laps,
      'status': instance.status,
      'Time': instance.time,
    };
