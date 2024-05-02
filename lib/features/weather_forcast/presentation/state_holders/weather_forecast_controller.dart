import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/features/weather_forcast/data/repositories/weather_forecast_repo.dart';
import 'package:demo/features/weather_forcast/domain/entities/forecast_list.dart';
import 'package:get/get.dart';

class WeatherForecastController extends GetxController {
  final WeatherForecastRepository _weatherForecastRepository;

  WeatherForecastController(this._weatherForecastRepository);

  bool _inProgress = true;

  late Failure _failure;

  List<ForecastList> _forecastList = [];

  List<ForecastList> get popularProductList => _forecastList;

  bool get inProgress => _inProgress;

  Failure get failure => _failure;

  Future<bool> getWeatherForecast() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final response = await _weatherForecastRepository.getForecastData();
    response.fold((error) {
      _failure = error;
    }, (forecast) {
      _forecastList = forecast;
      isSuccess = true;
    });
    _inProgress = false;
    update();
    return isSuccess;
  }
}
