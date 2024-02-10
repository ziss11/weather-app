// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
    };
