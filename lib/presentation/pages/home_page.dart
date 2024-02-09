import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';
import 'package:weather_app/presentation/widgets/parameter_tile.dart';
import 'package:weather_app/presentation/widgets/weather_card.dart';
import 'package:weather_app/presentation/widgets/weather_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _weatherHeader() {
    return Column(
      children: [
        const Text(
          'Surabaya',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 30,
            fontWeight: AppFontWeights.medium,
          ),
        ),
        const Gap(16),
        SvgPicture.asset(
          'assets/images/sunny.svg',
          fit: BoxFit.scaleDown,
          width: 120,
          height: 120,
        ),
        const Gap(16),
        const Text(
          '30º',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 52,
            fontWeight: AppFontWeights.medium,
          ),
        ),
        const Text(
          'Precipitations',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Max.: 31º',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
              ),
            ),
            Gap(6),
            Text(
              'Min.: 25º',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _weatherToday() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.darkBlue.withOpacity(.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: AppFontWeights.semibold,
                  ),
                ),
                Text(
                  'Mar, 9',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              color: AppColors.lightBlue,
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => const Gap(11),
              itemBuilder: (context, index) {
                return const WeatherCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _forecastWeather() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.darkBlue.withOpacity(.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              'Forecast',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: AppFontWeights.semibold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(
              color: AppColors.lightBlue,
            ),
          ),
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              separatorBuilder: (context, index) => const Divider(
                color: AppColors.lightBlue,
              ),
              itemBuilder: (context, index) {
                return const WeatherTile();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _additionalParameters() {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(
        2,
        (index) => const ParameterTile(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/bg_light.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _weatherHeader(),
                      const Gap(30),
                      _weatherToday(),
                      const Gap(20),
                      _forecastWeather(),
                      const Gap(20),
                      _additionalParameters(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
