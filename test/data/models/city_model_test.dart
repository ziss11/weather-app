import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/city_model.dart';

void main() {
  final tCityJson = {
    'name': 'name',
    'lat': 1.0,
    'lon': 1.0,
  };

  const tCityModel = CityModel(
    name: 'name',
    lat: 1.0,
    lon: 1.0,
  );

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
