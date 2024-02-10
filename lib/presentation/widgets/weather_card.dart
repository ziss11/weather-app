import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';
import 'package:weather_app/common/utilities.dart';
import 'package:weather_app/data/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const WeatherCard({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    final nowDateTime = DateTime.now();
    final formattedNowTime = DateFormat("HH").format(nowDateTime);

    final dateTime = Utilities.unixToDate(weather.date);
    final formattedTime = DateFormat("HH:mm").format(dateTime);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            (formattedNowTime == formattedTime.substring(0, 2))
                ? 'Now'
                : formattedTime,
            style: const TextStyle(
              fontWeight: AppFontWeights.medium,
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
          const Gap(8),
          SvgPicture.asset(
            Utilities.getWeatherIcon(
              weather.weather[0].description,
            ),
            fit: BoxFit.scaleDown,
            width: 34,
            height: 25,
          ),
          const Gap(8),
          Text(
            '${weather.temp.floor()}°C',
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.white,
              fontWeight: AppFontWeights.medium,
            ),
          ),
        ],
      ),
    );
  }
}
