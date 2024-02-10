// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';

part 'generated/weather_model.freezed.dart';
part 'generated/weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherModel({
    @JsonKey(name: 'dt') required int date,
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    required int humidity,
    required List<WeatherDetailModel> weather,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) =>
      _$WeatherModelFromJson(json);
}
