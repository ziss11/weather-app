import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/result_state.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/data/models/weather_location_model.dart';

class HomeController extends GetxController with WidgetsBindingObserver {
  final WeatherRemoteDataSource _remoteDataSource;

  HomeController(this._remoteDataSource) {
    fetchWeather();
  }

  final isNight = false.obs;
  final tempUnit = Constants.metricUnit.obs;

  final state = Rx<ResultState<WeatherLocationModel>>(
    const ResultState.initial(),
  );

  @override
  onInit() {
    super.onInit();

    _checkIsNight();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  onClose() {
    super.onClose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _checkIsNight();
    }
  }

  void _checkIsNight() {
    final hour = DateTime.now().hour;
    isNight.value = hour >= 18 || hour <= 6;
  }

  void setTempUnit(String tempUnit) {
    this.tempUnit.value = tempUnit;
    fetchWeather();
  }

  void fetchWeather() async {
    state.value = const ResultState.loading();

    final locationResult = await _remoteDataSource.getLocation('surabaya');

    locationResult.fold(
      (failure) {
        state.value = ResultState.error(failure.message);
      },
      (locatioData) async {
        final weatherResult = await _remoteDataSource.getWeather(
          locatioData.lat,
          locatioData.lon,
          tempUnit.value,
        );

        weatherResult.fold(
          (failure) {
            state.value = ResultState.error(failure.message);
          },
          (weatherData) {
            final result = WeatherLocationModel(
              location: locatioData,
              weather: weatherData,
            );
            state.value = ResultState.loaded(result);
          },
        );
      },
    );
  }
}
