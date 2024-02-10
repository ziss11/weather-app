import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';
import 'package:weather_app/data/models/weather_model.dart';

void main() {
  final tWeatherJson = {
    'dt': 1,
    'temp': 1.0,
    'feels_like': 1.0,
    'humidity': 1,
    'weather': [
      {
        'id': 1,
        'main': 'main',
        'description': 'description',
        'icon': 'icon',
      }
    ]
  };

  const tWeatherModel = WeatherModel(
    date: 1,
    temp: 1.0,
    feelsLike: 1.0,
    humidity: 1,
    weather: [
      WeatherDetailModel(
        id: 1,
        main: 'main',
        description: 'description',
        icon: 'icon',
      ),
    ],
  );

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
