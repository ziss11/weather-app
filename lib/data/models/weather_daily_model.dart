// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/temp_model.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';

part 'generated/weather_daily_model.freezed.dart';
part 'generated/weather_daily_model.g.dart';

@freezed
class WeatherDailyModel with _$WeatherDailyModel {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherDailyModel({
    @JsonKey(name: 'dt') required int date,
    required TempModel temp,
    required int humidity,
    required List<WeatherDetailModel> weather,
  }) = _WeatherDailyModel;

  factory WeatherDailyModel.fromJson(Map<String, Object?> json) =>
      _$WeatherDailyModelFromJson(json);
}
