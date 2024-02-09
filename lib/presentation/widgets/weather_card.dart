import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '29°C',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
              fontWeight: AppFontWeights.medium,
            ),
          ),
          SvgPicture.asset(
            'assets/images/cloudy.svg',
            fit: BoxFit.scaleDown,
            width: 34,
            height: 25,
          ),
          const Text(
            '15.00',
            style: TextStyle(
              fontWeight: AppFontWeights.medium,
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
