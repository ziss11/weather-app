import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/feels_like_model.freezed.dart';
part 'generated/feels_like_model.g.dart';

@freezed
class FeelsLikeModel with _$FeelsLikeModel {
  const factory FeelsLikeModel({
    required double day,
    required double night,
  }) = _FeelsLikeModel;

  factory FeelsLikeModel.fromJson(Map<String, Object?> json) =>
      _$FeelsLikeModelFromJson(json);
}
