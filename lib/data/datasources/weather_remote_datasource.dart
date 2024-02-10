import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/failure.dart';
import 'package:weather_app/common/network_info.dart';
import 'package:weather_app/data/models/city_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

class WeatherRemoteDataSource {
  final Dio _dio;
  final NetworkInfo _networkInfo;

  const WeatherRemoteDataSource(
    this._dio,
    this._networkInfo,
  );

  Future<Either<Failure, CityModel>> getLocation(String city) async {
    if (await _networkInfo.isConnected) {
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
    } else {
      return const Left(Failure(Constants.networkErrorMessage));
    }
  }

  Future<Either<Failure, WeatherResponse>> getWeather(
    double latitude,
    double longitude,
    String units,
  ) async {
    if (await _networkInfo.isConnected) {
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
    } else {
      return const Left(Failure(Constants.networkErrorMessage));
    }
  }
}
