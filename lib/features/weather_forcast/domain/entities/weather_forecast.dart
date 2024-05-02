import 'package:demo/features/weather_forcast/domain/entities/forecast_list.dart';

class WeatherForecast {
  final String cod;
  final int message;
  final int cnt;
  final List<ForecastList> list;

  WeatherForecast(
      {required this.cod,
      required this.message,
      required this.cnt,
      required this.list});
}
