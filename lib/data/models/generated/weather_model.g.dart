// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      date: json['dt'] as int,
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      humidity: json['humidity'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'dt': instance.date,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'humidity': instance.humidity,
      'weather': instance.weather,
    };
