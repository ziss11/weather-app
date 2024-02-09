import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/presentation/bindings/home_binding.dart';
import 'package:weather_app/presentation/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
        ),
        fontFamily: 'SF Pro Display',
      ),
      initialBinding: HomeBinding(),
      home: const HomePage(),
    );
  }
}
