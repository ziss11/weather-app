// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/city_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

part 'generated/weather_location_model.freezed.dart';
part 'generated/weather_location_model.g.dart';

@freezed
class WeatherLocationModel with _$WeatherLocationModel {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherLocationModel({
    required CityModel location,
    required WeatherResponse weather,
  }) = _WeatherLocationModel;

  factory WeatherLocationModel.fromJson(Map<String, Object?> json) =>
      _$WeatherLocationModelFromJson(json);
}
