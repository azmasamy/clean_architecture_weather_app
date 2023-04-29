import 'package:clean_architecture_weather_app/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
    super.id,
    super.cityName,
    super.description,
    super.main,
    super.pressure,
  );

  factory WeatherModel.fromMap(Map<String, dynamic> map) => WeatherModel(
        map['id'],
        map['name'],
        map['weather'][0]['description'],
        map['weather'][0]['main'],
        map['main']['pressure'],
      );
}
