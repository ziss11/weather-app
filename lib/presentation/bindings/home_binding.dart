import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather_app/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<WeatherRemoteDataSource>(
        () => WeatherRemoteDataSourceImpl(Get.find()));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
