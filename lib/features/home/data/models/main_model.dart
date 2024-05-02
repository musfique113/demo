import 'package:demo/features/home/domain/entities/main.dart';

class MainModel {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  MainModel(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity});

  MainModel.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  Main toEntity() => Main(
      temp: temp ?? 0,
      feelsLike: feelsLike ?? 0,
      tempMin: tempMin ?? 0,
      tempMax: tempMax ?? 0,
      pressure: pressure ?? 0,
      humidity: humidity ?? 0);
}
