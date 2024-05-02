import 'package:demo/features/home/domain/entities/coord.dart';
import 'package:demo/features/home/domain/entities/main.dart';
import 'package:demo/features/home/domain/entities/weather.dart';

class WeatherData {
  final Coord coord;
  final List<Weather> weather;
  final String base;
  final Main main;
  final int visibility;
  final int dt;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  WeatherData(
      {required this.coord,
      required this.weather,
      required this.base,
      required this.main,
      required this.visibility,
      required this.dt,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});
}
