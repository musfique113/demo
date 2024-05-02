import 'package:demo/features/home/domain/entities/weather.dart';

class WeatherModel {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherModel({this.id, this.main, this.description, this.icon});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Weather toEntity() => Weather(
      id: id ?? 0,
      main: main ?? '',
      description: description ?? '',
      icon: icon ?? '');
}
