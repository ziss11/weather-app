// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/data/models/weather_model.dart';

part 'generated/weather_response.freezed.dart';
part 'generated/weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherResponse({
    required WeatherModel current,
    required List<WeatherModel> hourly,
    required List<WeatherDailyModel> daily,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, Object?> json) =>
      _$WeatherResponseFromJson(json);
}
