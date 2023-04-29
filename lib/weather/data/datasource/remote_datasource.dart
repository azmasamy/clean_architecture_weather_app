import 'package:clean_architecture_weather_app/core/constants/api.dart';
import 'package:clean_architecture_weather_app/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDatasource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDatasource implements BaseRemoteDatasource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      final response =
          await Dio().get('$baseUrl/weather?q=$cityName&appid=$apiKey');
      return WeatherModel.fromMap(response.data);
    } catch (e) {
      return null;
    }
  }
}
