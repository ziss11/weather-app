import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/failure.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/data/models/city_model.dart';
import 'package:weather_app/data/models/weather_response.dart';

import '../../helper/test_helper.mocks.dart';
import '../../json_readert.dart';

void main() {
  late WeatherRemoteDataSource dataSource;
  late MockDio mockDio;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    dotenv.testLoad();

    mockDio = MockDio();
    mockNetworkInfo = MockNetworkInfo();
    dataSource = WeatherRemoteDataSource(
      mockDio,
      mockNetworkInfo,
    );
  });

  group('get Location', () {
    const city = 'surabaya';

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(
        mockDio.get(
          '${dotenv.env['BASE_URL']}/geo/1.0/direct',
          queryParameters: {
            'q': city,
            'limit': 1,
            'appid': dotenv.env['WEATHER_API_KEY'],
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(readJson('dummy_data/location.json')),
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );
      // act
      await dataSource.getLocation(city);
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    group('when device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      final testCityModel = CityModel.fromJson(
        jsonDecode(readJson('dummy_data/location.json'))[0],
      );

      test('should return a City Model when the response code is 200',
          () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/geo/1.0/direct',
            queryParameters: {
              'q': city,
              'limit': 1,
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: jsonDecode(readJson('dummy_data/location.json')),
            statusCode: 200,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getLocation(city);
        // assert
        expect(result, Right(testCityModel));
      });

      test('should return failure when the response code is 404', () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/geo/1.0/direct',
            queryParameters: {
              'q': city,
              'limit': 1,
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: 'Not Found',
            statusCode: 404,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getLocation(city);
        // assert
        expect(
          result,
          const Left(Failure(Constants.loadCityErrorMessage)),
        );
      });
    });

    group('when the device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      test('should return failure when the device is offline', () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/geo/1.0/direct',
            queryParameters: {
              'q': city,
              'limit': 1,
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: 'Network Error',
            statusCode: 400,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getLocation(city);
        // assert
        expect(
          result,
          const Left(Failure(Constants.networkErrorMessage)),
        );
      });
    });
  });

  group('get Weather', () {
    const latitude = 1.0;
    const longitude = 1.0;
    const units = 'metric';

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(
        mockDio.get(
          '${dotenv.env['BASE_URL']}/data/3.0/onecall',
          queryParameters: {
            'lat': latitude,
            'lon': longitude,
            'units': units,
            'exclude': 'minutely',
            'appid': dotenv.env['WEATHER_API_KEY'],
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(readJson('dummy_data/weather.json')),
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );
      // act
      await dataSource.getWeather(latitude, longitude, units);
      // assert
      verify(mockNetworkInfo.isConnected);
    });

    group('when device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      final testWeatherResponse = WeatherResponse.fromJson(
        jsonDecode(readJson('dummy_data/weather.json')),
      );

      test('should return a Weather Response when the response code is 200',
          () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/data/3.0/onecall',
            queryParameters: {
              'lat': latitude,
              'lon': longitude,
              'units': units,
              'exclude': 'minutely',
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: jsonDecode(readJson('dummy_data/weather.json')),
            statusCode: 200,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getWeather(latitude, longitude, units);
        // assert
        expect(result, Right(testWeatherResponse));
      });

      test('should return failure when the response code is 404', () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/data/3.0/onecall',
            queryParameters: {
              'lat': latitude,
              'lon': longitude,
              'units': units,
              'exclude': 'minutely',
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: 'Not Found',
            statusCode: 404,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getWeather(latitude, longitude, units);
        // assert
        expect(result, const Left(Failure(Constants.loadWeatherErrorMessage)));
      });
    });

    group('when the device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      test('should return failure when the device is offline', () async {
        // arrange
        when(
          mockDio.get(
            '${dotenv.env['BASE_URL']}/data/3.0/onecall',
            queryParameters: {
              'lat': latitude,
              'lon': longitude,
              'units': units,
              'exclude': 'minutely',
              'appid': dotenv.env['WEATHER_API_KEY'],
            },
          ),
        ).thenAnswer(
          (_) async => Response(
            data: 'Network Error',
            statusCode: 400,
            requestOptions: RequestOptions(),
          ),
        );
        // act
        final result = await dataSource.getWeather(latitude, longitude, units);
        // assert
        expect(result, const Left(Failure(Constants.networkErrorMessage)));
      });
    });
  });
}
