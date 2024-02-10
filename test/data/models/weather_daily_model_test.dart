import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/feels_like_model.dart';
import 'package:weather_app/data/models/temp_model.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';

void main() {
  final tWeatherDailyJson = {
    'dt': 1,
    'temp': {
      'day': 1.0,
      'night': 1.0,
    },
    'feels_like': {
      'day': 1.0,
      'night': 1.0,
    },
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

  const tWeatherDailyModel = WeatherDailyModel(
    date: 1,
    temp: TempModel(
      day: 1.0,
      night: 1.0,
    ),
    feelsLike: FeelsLikeModel(
      day: 1.0,
      night: 1.0,
    ),
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
