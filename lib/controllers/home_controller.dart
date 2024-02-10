import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/constants.dart';

class HomeController extends GetxController with WidgetsBindingObserver {
  final isNight = false.obs;
  final isRefresh = false.obs;
  final tempUnit = Constants.celcius.obs;

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

  void onRefresh() {
    debugPrint('Refresh');
    isRefresh.value = true;
    Future.delayed(const Duration(seconds: 3), () {
      isRefresh.value = false;
    });
  }

  void setTempUnit(String tempUnit) {
    this.tempUnit.value = tempUnit;
  }
}
