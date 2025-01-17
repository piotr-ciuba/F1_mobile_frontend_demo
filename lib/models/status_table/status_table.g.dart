// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusTableImpl _$$StatusTableImplFromJson(Map<String, dynamic> json) =>
    _$StatusTableImpl(
      status: (json['Status'] as List<dynamic>?)
          ?.map((e) => Status.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StatusTableImplToJson(_$StatusTableImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
    };
