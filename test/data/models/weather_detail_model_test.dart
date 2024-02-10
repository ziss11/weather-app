import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';

import '../../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tWeatherDetailJson;
    // act
    final result = WeatherDetailModel.fromJson(jsonMap);
    // assert
    expect(result, tWeatherDetailModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tWeatherDetailModel.toJson();
    // assert
    final expectedJson = tWeatherDetailJson;
    expect(result, expectedJson);
  });
}
