import 'package:clean_architecture_weather_app/weather/data/datasource/remote_datasource.dart';
import 'package:clean_architecture_weather_app/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather_app/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  BaseRemoteDatasource baseRemoteDatasource;

  WeatherRepository(this.baseRemoteDatasource);

  @override
  Future<Weather> getWeatherByCountryName(String cityName) async {
    return (await baseRemoteDatasource.getWeatherByCityName(cityName))!;
  }
}
