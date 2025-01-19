// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circuit_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CircuitTableImpl _$$CircuitTableImplFromJson(Map<String, dynamic> json) =>
    _$CircuitTableImpl(
      circuits: (json['Circuits'] as List<dynamic>?)
          ?.map((e) => Circuit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CircuitTableImplToJson(_$CircuitTableImpl instance) =>
    <String, dynamic>{
      'Circuits': instance.circuits?.map((e) => e.toJson()).toList(),
    };
