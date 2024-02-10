abstract class Utilities {
  static DateTime unixToDate(int millisecondsSinceEpoch) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch * 1000,
    );
    return dateTime;
  }

  static String getWeatherIcon(String desc, [bool isNight = false]) {
    final iconPaths = {
      // Clear
      'clear sky': isNight
          ? 'assets/images/clear_night.svg'
          : 'assets/images/clear_day.svg',

      // Clouds
      'few clouds': isNight
          ? 'assets/images/few_clouds_night.svg'
          : 'assets/images/few_clouds_day.svg',
      'scattered clouds': 'assets/images/scattered_clouds.svg',
      'broken clouds': 'assets/images/broken_clouds.svg',
      'overcast clouds': 'assets/images/broken_clouds.svg',

      // Drizzle
      'light intensity drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'heavy intensity drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'light intensity drizzle rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'drizzle rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'heavy intensity drizzle rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'shower rain and drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'heavy shower rain and drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'shower drizzle': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',

      // Rain
      'shower rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'light intensity shower rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'heavy intensity shower rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'ragged shower rain': isNight
          ? 'assets/images/shower_rain_night.svg'
          : 'assets/images/shower_rain_day.svg',
      'light rain': isNight
          ? 'assets/images/light_rain_night.svg'
          : 'assets/images/light_rain_day.svg',
      'moderate rain': isNight
          ? 'assets/images/rain_night.svg'
          : 'assets/images/rain_day.svg',
      'heavy intensity rain': isNight
          ? 'assets/images/rain_night.svg'
          : 'assets/images/rain_day.svg',
      'very heavy rain': isNight
          ? 'assets/images/rain_night.svg'
          : 'assets/images/rain_day.svg',
      'extreme rain': isNight
          ? 'assets/images/rain_night.svg'
          : 'assets/images/rain_day.svg',
      'freezing rain': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',

      // Thunderstorm
      'thunderstorm': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'thunderstorm with light rain': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'thunderstorm with rain': isNight
          ? 'assets/images/thunder_rain_night.svg'
          : 'assets/images/thunder_rain_day.svg',
      'thunderstorm with heavy rain': isNight
          ? 'assets/images/thunder_rain_night.svg'
          : 'assets/images/thunder_rain_day.svg',
      'light thunderstorm': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'heavy thunderstorm': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'ragged thunderstorm': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'thunderstorm with light drizzle': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'thunderstorm with drizzle': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',
      'thunderstorm with heavy drizzle	': isNight
          ? 'assets/images/thunderstorm_night.svg'
          : 'assets/images/thunderstorm_day.svg',

      // Snow
      'snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'light snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'heavy snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'sleet': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'light shower sleet': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'shower sleet': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'light rain and snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'rain and snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'light shower snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'shower snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',
      'heavy shower snow': isNight
          ? 'assets/images/snow_night.svg'
          : 'assets/images/snow_day.svg',

      // Atmosphere
      'mist': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'smoke': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'haze': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'sand/dust whirls': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'fog': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'sand': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'dust': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'volcanic ash': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'squalls': isNight
          ? 'assets/images/mist_night.svg'
          : 'assets/images/mist_day.svg',
      'tornado':
          isNight ? 'assets/images/tornado.svg' : 'assets/images/tornado.svg',
    };

    return iconPaths[desc] ?? '';
  }
}
