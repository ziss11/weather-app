import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/feels_like_model.dart';
import 'package:weather_app/data/models/temp_model.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

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

  final tWeatherResponseJson = {
    'current': tWeatherJson,
    'hourly': [
      tWeatherJson,
    ],
    'daily': [
      tWeatherDailyJson,
    ],
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

  const tWeatherResponse = WeatherResponse(
    current: tWeatherModel,
    hourly: [
      tWeatherModel,
    ],
    daily: [
      tWeatherDailyModel,
    ],
  );

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
