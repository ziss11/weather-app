import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/weather_detail_model.freezed.dart';
part 'generated/weather_detail_model.g.dart';

@freezed
class WeatherDetailModel with _$WeatherDetailModel {
  const factory WeatherDetailModel({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherDetailModel;

  factory WeatherDetailModel.fromJson(Map<String, Object?> json) =>
      _$WeatherDetailModelFromJson(json);
}
