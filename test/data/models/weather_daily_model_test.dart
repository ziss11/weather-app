import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';

import '../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tWeatherDailyJson;
    // act
    final result = WeatherDailyModel.fromJson(jsonMap);
    // assert
    expect(result, tWeatherDailyModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tWeatherDailyModel.toJson();
    // assert
    final expectedJson = tWeatherDailyJson;
    expect(result, expectedJson);
  });
}
