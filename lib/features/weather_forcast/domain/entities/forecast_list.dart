import 'package:demo/features/home/domain/entities/main.dart';
import 'package:demo/features/home/domain/entities/weather.dart';
import 'package:demo/features/weather_forcast/domain/entities/rain.dart';

class ForecastList {
  final int dt;
  final Main main;
  final List<Weather> weather;

  final int visibility;
  final double pop;

  final String dtTxt;
  // final Rain rain;

  ForecastList(
      {required this.dt,
      required this.main,
      required this.weather,
      required this.visibility,
      required this.pop,
      required this.dtTxt,
      // required this.rain

      });
}
