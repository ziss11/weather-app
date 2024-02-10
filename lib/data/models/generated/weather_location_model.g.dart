// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../weather_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherLocationModelImpl _$$WeatherLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherLocationModelImpl(
      location: CityModel.fromJson(json['location'] as Map<String, dynamic>),
      weather:
          WeatherResponse.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherLocationModelImplToJson(
        _$WeatherLocationModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'weather': instance.weather.toJson(),
    };
