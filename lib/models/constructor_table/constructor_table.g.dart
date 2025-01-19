// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constructor_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConstructorTableImpl _$$ConstructorTableImplFromJson(
        Map<String, dynamic> json) =>
    _$ConstructorTableImpl(
      constructors: (json['Constructors'] as List<dynamic>?)
          ?.map((e) => Constructor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConstructorTableImplToJson(
        _$ConstructorTableImpl instance) =>
    <String, dynamic>{
      'Constructors': instance.constructors?.map((e) => e.toJson()).toList(),
    };
