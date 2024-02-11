// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../temp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempModelImpl _$$TempModelImplFromJson(Map<String, dynamic> json) =>
    _$TempModelImpl(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$$TempModelImplToJson(_$TempModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'min': instance.min,
      'max': instance.max,
    };
