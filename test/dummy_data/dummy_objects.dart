import 'package:weather_app/data/models/city_model.dart';
import 'package:weather_app/data/models/temp_model.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/data/models/weather_detail_model.dart';
import 'package:weather_app/data/models/weather_location_model.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

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

final tTempJson = {
  'day': 1.0,
  'night': 1.0,
  'min': 1.0,
  'max': 1.0,
};

const tTempModel = TempModel(
  day: 1.0,
  night: 1.0,
  min: 1.0,
  max: 1.0,
);

final tWeatherDetailJson = {
  'id': 1,
  'main': 'main',
  'description': 'description',
  'icon': 'icon',
};

const tWeatherDetailModel = WeatherDetailModel(
  id: 1,
  main: 'main',
  description: 'description',
  icon: 'icon',
);

final tWeatherJson = {
  'dt': 1,
  'temp': 1.0,
  'humidity': 1,
  'weather': [
    tWeatherDetailJson,
  ]
};

const tWeatherModel = WeatherModel(
  date: 1,
  temp: 1.0,
  humidity: 1,
  weather: [
    tWeatherDetailModel,
  ],
);
final tWeatherDailyJson = {
  'dt': 1,
  'temp': tTempJson,
  'humidity': 1,
  'weather': [
    tWeatherDetailJson,
  ]
};

const tWeatherDailyModel = WeatherDailyModel(
  date: 1,
  temp: tTempModel,
  humidity: 1,
  weather: [
    tWeatherDetailModel,
  ],
);

final tWeatherResponseJson = {
  'current': tWeatherJson,
  'hourly': [
    tWeatherJson,
  ],
  'daily': [
    tWeatherDailyJson,
  ],
};

const tWeatherResponse = WeatherResponse(
  current: tWeatherModel,
  hourly: [
    tWeatherModel,
  ],
  daily: [
    tWeatherDailyModel,
  ],
);

final tWeatherLocationJson = {
  'location': {
    'name': 'name',
    'lat': 1.0,
    'lon': 1.0,
  },
  'weather': tWeatherResponseJson,
};

const tWeatherLocationModel = WeatherLocationModel(
  location: tCityModel,
  weather: tWeatherResponse,
);
