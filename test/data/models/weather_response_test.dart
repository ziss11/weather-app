import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_response.dart';

import '../../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tWeatherResponseJson;
    // act
    final result = WeatherResponse.fromJson(jsonMap);
    // assert
    expect(result, tWeatherResponse);
  });

  test('should return a json map containing the proper data', () {
    // act
    final result = tWeatherResponse.toJson();
    // assert
    final expectedJson = tWeatherResponseJson;
    expect(result, expectedJson);
  });
}
