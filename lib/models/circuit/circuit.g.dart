// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circuit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CircuitImpl _$$CircuitImplFromJson(Map<String, dynamic> json) =>
    _$CircuitImpl(
      circuitId: json['circuitId'] as String?,
      url: json['url'] as String?,
      circuitName: json['circuitName'] as String?,
      location: json['Location'] == null
          ? null
          : Location.fromJson(json['Location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CircuitImplToJson(_$CircuitImpl instance) =>
    <String, dynamic>{
      'circuitId': instance.circuitId,
      'url': instance.url,
      'circuitName': instance.circuitName,
      'Location': instance.location,
    };
