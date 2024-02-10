import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/common/app_colors.dart';
import 'package:weather_app/common/app_font_weights.dart';
import 'package:weather_app/common/constants.dart';
import 'package:weather_app/common/utilities.dart';
import 'package:weather_app/data/models/weather_daily_model.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/controllers/home_controller.dart';
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
            child: Obx(
              () => controller.state.value.map(
                initial: (value) {
                  return const Center(
                    child: Text(
                      'No Data',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: AppFontWeights.medium,
                      ),
                    ),
                  );
                },
                loading: (value) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        (controller.isNight.value)
                            ? AppColors.lightBlue
                            : AppColors.white,
                      ),
                    ),
                  );
                },
                loaded: (value) {
                  final weather = value.data.weather;
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _weatherHeader(
                              weather: weather.current,
                            ),
                            const Gap(30),
                            _additionalParameters(
                              weather: weather.current,
                            ),
                            const Gap(16),
                            _weatherToday(
                              millisecondsSinceEpoch: weather.current.date,
                              weathers: weather.hourly,
                            ),
                            const Gap(16),
                            _forecastWeather(
                              weathers: weather.daily,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                error: (value) {
                  return Center(
                    child: Text(
                      value.message,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: AppFontWeights.medium,
                      ),
                    ),
                  );
                },
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

  Widget _locationText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: AppFontWeights.medium,
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
            Obx(
              () => controller.state.value.map(
                initial: (value) {
                  return _locationText(text: '-');
                },
                loading: (value) {
                  return _locationText(text: '-');
                },
                loaded: (value) {
                  return _locationText(
                    text: value.data.location.name,
                  );
                },
                error: (value) {
                  return _locationText(text: '-');
                },
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
                  controller.setTempUnit(value);
                },
                child: const Icon(
                  Icons.more_vert,
                  color: AppColors.white,
                ),
                itemBuilder: (context) {
                  return [
                    _popUpMenuItem<String>(
                      title: 'Celcius',
                      value: Constants.metricUnit,
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
                      value: Constants.imperialUnit,
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

  Widget _weatherHeader({required WeatherModel weather}) {
    final dateTime = Utilities.unixToDate(weather.date);
    final formattedTime = DateFormat('HH:mm').format(dateTime);

    return Column(
      children: [
        Obx(
          () => SvgPicture.asset(
            Utilities.getWeatherIcon(
              weather.weather[0].description,
              controller.isNight.value,
            ),
            fit: BoxFit.scaleDown,
            width: 120,
            height: 120,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            '${weather.temp.floor()}º',
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 72,
              fontWeight: AppFontWeights.regular,
            ),
          ),
        ),
        Text(
          weather.weather[0].main,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: AppFontWeights.medium,
          ),
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Last updated: $formattedTime',
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
            const Gap(8),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: controller.fetchWeather,
              icon: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  AppColors.white,
                  BlendMode.srcATop,
                ),
                child: SvgPicture.asset(
                  'assets/icons/ic_refresh.svg',
                  width: 13,
                  height: 13,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _weatherToday({
    required int millisecondsSinceEpoch,
    required List<WeatherModel> weathers,
  }) {
    final dateTime = Utilities.unixToDate(millisecondsSinceEpoch);
    final formattedDate = DateFormat('MMM, d').format(dateTime);

    final todayWeathers = weathers.where(
      (weather) {
        final todayDateTime = Utilities.unixToDate(weather.date);
        final formattedTodayDate = DateFormat('MMM, d').format(todayDateTime);
        return formattedTodayDate == formattedDate;
      },
    ).toList();

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Today',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: AppFontWeights.semibold,
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                color: (controller.isNight.value)
                    ? AppColors.lightBlue.withOpacity(.1)
                    : AppColors.lightBlue.withOpacity(.6),
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: todayWeathers.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final weather = todayWeathers[index];
                  return WeatherCard(weather: weather);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _forecastWeather({required List<WeatherDailyModel> weathers}) {
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Divider(
                color: (controller.isNight.value)
                    ? AppColors.lightBlue.withOpacity(.1)
                    : AppColors.lightBlue.withOpacity(.6),
              ),
            ),
            SizedBox(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: weathers.length,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 14),
                separatorBuilder: (context, index) => Divider(
                  color: (controller.isNight.value)
                      ? AppColors.lightBlue.withOpacity(.1)
                      : AppColors.lightBlue.withOpacity(.6),
                ),
                itemBuilder: (context, index) {
                  final weather = weathers[index];
                  return DailyWeatherTile(weather: weather);
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

  Widget _additionalParameters({required WeatherModel weather}) {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _parameterItem(
              icon: SvgPicture.asset('assets/icons/ic_feels_like.svg'),
              value: '${weather.feelsLike.floor()}%',
            ),
            _parameterItem(
              icon: SvgPicture.asset('assets/icons/ic_humidity.svg'),
              value: '${weather.humidity} km/h',
            ),
          ],
        ),
      ),
    );
  }
}
