import 'package:demo/features/home/data/models/coord_model.dart';
import 'package:demo/features/home/data/models/main_model.dart';
import 'package:demo/features/home/data/models/weather_model.dart';
import 'package:demo/features/home/domain/entities/weather_data.dart';

class WeatherDataModel {
  CoordModel? coord;
  List<WeatherModel>? weather;
  String? base;
  MainModel? main;
  int? visibility;
  int? dt;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherDataModel(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.dt,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  WeatherDataModel.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? CoordModel.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = <WeatherModel>[];
      json['weather'].forEach((v) {
        weather!.add(WeatherModel.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ? MainModel.fromJson(json['main']) : null;
    visibility = json['visibility'];
    dt = json['dt'];
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }

  WeatherData toEntity() => WeatherData(
      coord: coord!.toEntity(),
      weather: weather?.map((e) => e.toEntity()).toList() ?? [],
      base: base ?? '',
      main: main!.toEntity(),
      visibility: visibility ?? 0,
      dt: dt ?? 0,
      timezone: timezone ?? 0,
      id: id ?? 0,
      name: name ?? '',
      cod: cod ?? 0);
}
