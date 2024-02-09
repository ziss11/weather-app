import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';

class WeatherTile extends StatelessWidget {
  const WeatherTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Monday',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: AppFontWeights.medium,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/images/cloudy.svg',
            fit: BoxFit.scaleDown,
            width: 34,
            height: 25,
          ),
          const Spacer(),
          const Text(
            '28°C',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
          const Gap(16),
          const Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.white,
          ),
          const Gap(16),
          const Text(
            '31°C',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
