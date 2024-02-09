import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isNight = false.obs;
  final isRefresh = false.obs;

  @override
  void onReady() {
    super.onReady();
    _checkIsNight();
  }

  void _checkIsNight() {
    final hour = DateTime.now().hour;
    debugPrint(hour.toString());
    isNight.value = hour >= 18 || hour <= 6;
  }

  void onRefresh() {
    debugPrint('Refresh');
    isRefresh.value = true;
    Future.delayed(const Duration(seconds: 3), () {
      isRefresh.value = false;
    });
  }
}
