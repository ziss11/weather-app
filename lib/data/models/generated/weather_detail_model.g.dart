// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../weather_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDetailModelImpl _$$WeatherDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDetailModelImpl(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherDetailModelImplToJson(
        _$WeatherDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
