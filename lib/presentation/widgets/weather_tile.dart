import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';
import 'package:weather_app/common/utilities.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/presentation/controllers/home_controller.dart';

class DailyWeatherTile extends StatelessWidget {
  final WeatherDailyModel weather;

  const DailyWeatherTile({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    final dateTime = Utilities.unixToDate(weather.date);
    final formattedDate = DateFormat('EEEE').format(dateTime);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            formattedDate,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: AppFontWeights.medium,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            Utilities.getWeatherIcon(
              weather.weather[0].description,
            ),
            fit: BoxFit.scaleDown,
            width: 34,
            height: 25,
          ),
          const Gap(24),
          Text(
            (homeController.isNight.value)
                ? '${weather.temp.night.floor()}°C'
                : '${weather.temp.day.floor()}°C',
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: AppFontWeights.medium,
              fontSize: 14,
            ),
          ),
          const Gap(16),
          const Icon(
            Icons.arrow_forward_rounded,
            color: AppColors.white,
          ),
          const Gap(16),
          Text(
            (homeController.isNight.value)
                ? '${weather.feelsLike.night.floor()}°C'
                : '${weather.feelsLike.day.floor()}°C',
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: AppFontWeights.medium,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
