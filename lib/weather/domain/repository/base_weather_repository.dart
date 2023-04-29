import 'package:clean_architecture_weather_app/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCountryName(String cityName);
}
