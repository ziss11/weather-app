import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/city_model.freezed.dart';
part 'generated/city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String name,
    required double lat,
    required double lon,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, Object?> json) =>
      _$CityModelFromJson(json);
}
