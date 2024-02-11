// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../weather_daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDailyModelImpl _$$WeatherDailyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDailyModelImpl(
      date: json['dt'] as int,
      temp: TempModel.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: json['humidity'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherDailyModelImplToJson(
        _$WeatherDailyModelImpl instance) =>
    <String, dynamic>{
      'dt': instance.date,
      'temp': instance.temp.toJson(),
      'humidity': instance.humidity,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };
