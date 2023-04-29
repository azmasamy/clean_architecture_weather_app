import 'package:clean_architecture_weather_app/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather_app/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCityName {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherByCityName(this.baseWeatherRepository);

  Future<Weather> execute(String cityName) async {
    return await baseWeatherRepository.getWeatherByCountryName(cityName);
  }
}
