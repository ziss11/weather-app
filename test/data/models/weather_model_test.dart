import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_model.dart';

import '../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tWeatherJson;
    // act
    final result = WeatherModel.fromJson(jsonMap);
    // assert
    expect(result, tWeatherModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tWeatherModel.toJson();
    // assert
    final expectedJson = tWeatherJson;
    expect(result, expectedJson);
  });
}
