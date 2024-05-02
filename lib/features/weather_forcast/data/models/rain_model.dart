import 'package:demo/features/weather_forcast/domain/entities/rain.dart';

class RainModel {
  double? d3h;

  RainModel({this.d3h});

  RainModel.fromJson(Map<String, dynamic> json) {
    d3h = json['3h'];
  }

  Rain toEntity() => Rain(d3h: d3h ?? 0);
}
