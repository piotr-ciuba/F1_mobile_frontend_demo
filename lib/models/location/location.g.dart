// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      lat: json['lat'] as String?,
      long: json['long'] as String?,
      locality: json['locality'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
      'locality': instance.locality,
      'country': instance.country,
    };
