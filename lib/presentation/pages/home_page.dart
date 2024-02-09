import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/controllers/home_controller.dart';
import 'package:weather_app/presentation/widgets/weather_card.dart';
import 'package:weather_app/presentation/widgets/weather_tile.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              (controller.isNight.value)
                  ? 'assets/images/bg_dark.png'
                  : 'assets/images/bg_light.png',
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _appBar(),
          body: SafeArea(
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
                      _additionalParameters(),
                      const Gap(16),
                      _weatherToday(),
                      const Gap(16),
                      _forecastWeather(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  PopupMenuEntry<T> _popUpMenuItem<T>({
    required String title,
    T? value,
    Widget? suffix,
  }) {
    return PopupMenuItem<T>(
      height: 20,
      value: value,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (controller.tempUnit.value == value)
              ? Icon(
                  Icons.check_rounded,
                  size: 18,
                  color: (controller.isNight.value)
                      ? AppColors.white
                      : AppColors.black,
                )
              : const SizedBox(width: 18),
          const Gap(6),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: (controller.isNight.value)
                  ? AppColors.white
                  : AppColors.black,
              fontWeight: AppFontWeights.medium,
            ),
          ),
          const Spacer(),
          suffix ?? const SizedBox(),
        ],
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_location.svg',
              width: 18,
              height: 18,
              fit: BoxFit.scaleDown,
            ),
            const Gap(8),
            const Text(
              'Surabaya',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: AppFontWeights.medium,
              ),
            ),
            const Spacer(),
            Obx(
              () => PopupMenuButton(
                splashRadius: 20,
                constraints: const BoxConstraints(minWidth: 150),
                color: (controller.isNight.value)
                    ? AppColors.darkBlue
                    : AppColors.white,
                position: PopupMenuPosition.under,
                iconColor: AppColors.white,
                onSelected: (value) {
                  controller.tempUnit.value = value;
                },
                child: const Icon(
                  Icons.more_vert,
                  color: AppColors.white,
                ),
                itemBuilder: (context) {
                  return [
                    _popUpMenuItem<String>(
                      title: 'Celcius',
                      value: Constants.celcius,
                      suffix: Text(
                        'Cº',
                        style: TextStyle(
                          fontSize: 14,
                          color: (controller.isNight.value)
                              ? AppColors.white
                              : AppColors.black,
                          fontWeight: AppFontWeights.semibold,
                        ),
                      ),
                    ),
                    _popUpMenuItem<String>(
                      title: 'Fahrenheit',
                      value: Constants.fahrenheit,
                      suffix: Text(
                        'Fº',
                        style: TextStyle(
                          fontSize: 14,
                          color: (controller.isNight.value)
                              ? AppColors.white
                              : AppColors.black,
                          fontWeight: AppFontWeights.semibold,
                        ),
                      ),
                    )
                  ];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _weatherHeader() {
    return Column(
      children: [
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
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Last updated: 16:00',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
            const Gap(4),
            Obx(
              () => IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: controller.onRefresh,
                icon: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcATop,
                  ),
                  child: Lottie.asset(
                    'assets/lotties/refresh_icon.json',
                    animate: controller.isRefresh.value,
                    width: 22,
                    height: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _weatherToday() {
    return Obx(
      () => Container(
        width: Get.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (controller.isNight.value)
              ? AppColors.darkerBlue.withOpacity(.4)
              : AppColors.darkBlue.withOpacity(.2),
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
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const WeatherCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _forecastWeather() {
    return Obx(
      () => Container(
        width: Get.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (controller.isNight.value)
              ? AppColors.darkerBlue.withOpacity(.4)
              : AppColors.darkBlue.withOpacity(.2),
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
      ),
    );
  }

  Widget _parameterItem({required Widget icon, required String value}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const Gap(5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: AppFontWeights.medium,
            color: AppColors.white,
          ),
        )
      ],
    );
  }

  Widget _additionalParameters() {
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: (controller.isNight.value)
              ? AppColors.darkerBlue.withOpacity(.4)
              : AppColors.darkBlue.withOpacity(.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _parameterItem(
              icon: SvgPicture.asset('assets/icons/ic_rain.svg'),
              value: '6%',
            ),
            _parameterItem(
              icon: SvgPicture.asset('assets/icons/ic_feels_like.svg'),
              value: '90%',
            ),
            _parameterItem(
              icon: SvgPicture.asset('assets/icons/ic_humidity.svg'),
              value: '19 km/h',
            ),
          ],
        ),
      ),
    );
  }
}
