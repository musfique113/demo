import 'package:demo/features/weather_forcast/data/models/forecast_list_model.dart';
import 'package:demo/features/weather_forcast/domain/entities/weather_forecast.dart';

class WeatherForecastModel {
  String? cod;
  int? message;
  int? cnt;
  List<ForecastListModel>? list;

  WeatherForecastModel({this.cod, this.message, this.cnt, this.list});

  WeatherForecastModel.fromJson(Map<String, dynamic> json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = <ForecastListModel>[];
      json['list'].forEach((v) {
        list!.add(ForecastListModel.fromJson(v));
      });
    }
  }

  WeatherForecast toEntity() => WeatherForecast(
      cod: cod ?? '',
      message: message ?? 0,
      cnt: cnt ?? 0,
      list: list?.map((e) => e.toEntity()).toList() ?? []);
}
