import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/city_model.dart';

import '../../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () async {
    // arrange
    final Map<String, dynamic> jsonMap = tCityJson;
    // act
    final result = CityModel.fromJson(jsonMap);
    // assert
    expect(result, tCityModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tCityModel.toJson();
    // assert
    final expectedJson = tCityJson;
    expect(result, expectedJson);
  });
}
