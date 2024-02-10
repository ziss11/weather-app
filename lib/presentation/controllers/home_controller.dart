import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/data/models/result_state.dart';
import 'package:weather_app/data/models/weather_location_model.dart';

class HomeController extends GetxController with WidgetsBindingObserver {
  final WeatherRemoteDataSource _remoteDataSource;

  HomeController(this._remoteDataSource) {
    fetchWeather();
  }

  final isNight = false.obs;
  final tempUnit = Constants.celcius.obs;

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
    debugPrint(state.toString());

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
    Future.delayed(const Duration(seconds: 3), () {});
  }
}
