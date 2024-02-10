import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_location_model.dart';

import '../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tWeatherLocationJson;
    // act
    final result = WeatherLocationModel.fromJson(jsonMap);
    // assert
    expect(result, tWeatherLocationModel);
  });

  test('should return a json map containing proper data', () {
    // act
    final result = tWeatherLocationModel.toJson();
    // assert
    final expectedJson = tWeatherLocationJson;
    expect(result, expectedJson);
  });
}
