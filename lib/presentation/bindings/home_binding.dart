import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather_app/common/network_info.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternetConnectionChecker>(() => InternetConnectionChecker());
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<NetworkInfo>(() => NetworkInfo(Get.find()));
    Get.lazyPut<WeatherRemoteDataSource>(
        () => WeatherRemoteDataSource(Get.find(), Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
