abstract class Utilities {
  static DateTime unixToDate(int millisecondsSinceEpoch) {
    return DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch * 1000,
    );
  }

  static String getWeatherIcon(String desc, [bool isNight = false]) {
    final iconPaths = {
      // Clear
      'clear sky': isNight ? 'clear_night' : 'clear_day',

      // Clouds
      'few clouds': isNight ? 'few_clouds_night' : 'few_clouds_day',
      'scattered clouds': 'scattered_clouds',
      'broken clouds': 'broken_clouds',
      'overcast clouds': 'broken_clouds',

      // Drizzle
      'light intensity drizzle':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'drizzle': isNight ? 'shower_rain_night' : 'shower_rain_day',
      'heavy intensity drizzle':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'light intensity drizzle rain':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'drizzle rain': isNight ? 'shower_rain_night' : 'shower_rain_day',
      'heavy intensity drizzle rain':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'shower rain and drizzle':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'heavy shower rain and drizzle':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'shower drizzle': isNight ? 'shower_rain_night' : 'shower_rain_day',

      // Rain
      'shower rain': isNight ? 'shower_rain_night' : 'shower_rain_day',
      'light intensity shower rain':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'heavy intensity shower rain':
          isNight ? 'shower_rain_night' : 'shower_rain_day',
      'ragged shower rain': isNight ? 'shower_rain_night' : 'shower_rain_day',
      'light rain': isNight ? 'light_rain_night' : 'light_rain_day',
      'moderate rain': isNight ? 'rain_night' : 'rain_day',
      'heavy intensity rain': isNight ? 'rain_night' : 'rain_day',
      'very heavy rain': isNight ? 'rain_night' : 'rain_day',
      'extreme rain': isNight ? 'rain_night' : 'rain_day',
      'freezing rain': isNight ? 'snow_night' : 'snow_day',

      // Thunderstorm
      'thunderstorm': isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'thunderstorm with light rain':
          isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'thunderstorm with rain':
          isNight ? 'thunder_rain_night' : 'thunder_rain_day',
      'thunderstorm with heavy rain':
          isNight ? 'thunder_rain_night' : 'thunder_rain_day',
      'light thunderstorm': isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'heavy thunderstorm': isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'ragged thunderstorm':
          isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'thunderstorm with light drizzle':
          isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'thunderstorm with drizzle':
          isNight ? 'thunderstorm_night' : 'thunderstorm_day',
      'thunderstorm with heavy drizzle	':
          isNight ? 'thunderstorm_night' : 'thunderstorm_day',

      // Snow
      'snow': isNight ? 'snow_night' : 'snow_day',
      'light snow': isNight ? 'snow_night' : 'snow_day',
      'heavy snow': isNight ? 'snow_night' : 'snow_day',
      'sleet': isNight ? 'snow_night' : 'snow_day',
      'light shower sleet': isNight ? 'snow_night' : 'snow_day',
      'shower sleet': isNight ? 'snow_night' : 'snow_day',
      'light rain and snow': isNight ? 'snow_night' : 'snow_day',
      'rain and snow': isNight ? 'snow_night' : 'snow_day',
      'light shower snow': isNight ? 'snow_night' : 'snow_day',
      'shower snow': isNight ? 'snow_night' : 'snow_day',
      'heavy shower snow': isNight ? 'snow_night' : 'snow_day',

      // Atmosphere
      'mist': isNight ? 'mist_night' : 'mist_day',
      'smoke': isNight ? 'mist_night' : 'mist_day',
      'haze': isNight ? 'mist_night' : 'mist_day',
      'sand/dust whirls': isNight ? 'mist_night' : 'mist_day',
      'fog': isNight ? 'mist_night' : 'mist_day',
      'sand': isNight ? 'mist_night' : 'mist_day',
      'dust': isNight ? 'mist_night' : 'mist_day',
      'volcanic ash': isNight ? 'mist_night' : 'mist_day',
      'squalls': isNight ? 'mist_night' : 'mist_day',
      'tornado': isNight ? 'tornado' : 'tornado',
    };

    return 'assets/images/${iconPaths[desc] ?? ''}.svg';
  }
}
