import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/failure.dart';
import 'package:weather_app/data/models/city_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

abstract class WeatherRemoteDataSource {
  Future<Either<Failure, CityModel>> getLocation(String city);
  Future<Either<Failure, WeatherResponse>> getWeather(
    double latitude,
    double longitude,
    String units,
  );
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final Dio _dio;

  const WeatherRemoteDataSourceImpl(this._dio);

  @override
  Future<Either<Failure, CityModel>> getLocation(String city) async {
    final params = {
      'q': city,
      'limit': 1,
      'appid': dotenv.env['WEATHER_API_KEY'],
    };
    final endpoint = '${dotenv.env['BASE_URL']}/geo/1.0/direct';
    final response = await _dio.get(endpoint, queryParameters: params);

    if (response.statusCode == 200) {
      final result = CityModel.fromJson(response.data[0]);
      return Right(result);
    } else {
      return const Left(Failure(Constants.loadCityErrorMessage));
    }
  }

  @override
  Future<Either<Failure, WeatherResponse>> getWeather(
    double latitude,
    double longitude,
    String units,
  ) async {
    final params = {
      'lat': latitude,
      'lon': longitude,
      'units': units,
      'exclude': 'minutely',
      'appid': dotenv.env['WEATHER_API_KEY'],
    };
    final endpoint = '${dotenv.env['BASE_URL']}/data/3.0/onecall';
    final response = await _dio.get(endpoint, queryParameters: params);

    if (response.statusCode == 200) {
      final result = WeatherResponse.fromJson(response.data);
      return Right(result);
    } else {
      return const Left(Failure(Constants.loadWeatherErrorMessage));
    }
  }
}
