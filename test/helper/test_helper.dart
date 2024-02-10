import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_app/common/network_info.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';

@GenerateMocks([
  WeatherRemoteDataSource,
  NetworkInfo,
], customMocks: [
  MockSpec<Dio>(as: #MockDio),
])
void main() {}
