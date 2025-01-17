// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverTableImpl _$$DriverTableImplFromJson(Map<String, dynamic> json) =>
    _$DriverTableImpl(
      drivers: (json['Drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DriverTableImplToJson(_$DriverTableImpl instance) =>
    <String, dynamic>{
      'Drivers': instance.drivers,
    };
