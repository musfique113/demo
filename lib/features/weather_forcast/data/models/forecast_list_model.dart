import 'package:demo/features/home/data/models/main_model.dart';
import 'package:demo/features/home/data/models/weather_model.dart';
import 'package:demo/features/weather_forcast/data/models/rain_model.dart';
import 'package:demo/features/weather_forcast/domain/entities/forecast_list.dart';

class ForecastListModel {
  int? dt;
  MainModel? main;
  List<WeatherModel>? weather;
  int? visibility;
  double? pop;
  String? dtTxt;
  // RainModel? rain;

  ForecastListModel(
      {this.dt,
      this.main,
      this.weather,
      this.visibility,
      this.pop,
      this.dtTxt,
      // this.rain
      });

  ForecastListModel.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    main = json['main'] != null ? MainModel.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = <WeatherModel>[];
      json['weather'].forEach((v) {
        weather!.add(WeatherModel.fromJson(v));
      });
    }

    visibility = json['visibility'];
    pop = json['pop'];

    dtTxt = json['dt_txt'];
    // rain = json['rain'] != null ? RainModel.fromJson(json['rain']) : null;
  }

  ForecastList toEntity() => ForecastList(
      dt: dt ?? 0,
      main: main!.toEntity(),
      weather: weather?.map((e) => e.toEntity()).toList() ?? [],
      visibility: visibility ?? 0,
      pop: pop ?? 0,
      dtTxt: dtTxt ?? '',
      // rain: rain!.toEntity()
  );
}
