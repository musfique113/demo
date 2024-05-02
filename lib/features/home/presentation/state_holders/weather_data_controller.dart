import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/features/home/data/repositories/test_repo.dart';
import 'package:demo/features/home/domain/entities/weather_data.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  final WeatherRepository _testRepository;

  WeatherController(this._testRepository);

  bool _inProgress = true;
  late WeatherData _weatherData;
  late Failure _failure;

  bool get inProgress => _inProgress;

  WeatherData get testData => _weatherData;

  Failure get error => _failure;

  Future<bool> getEmployeeData() async {
    bool isSuccess = false;
    _inProgress = true;
    update();

    final response = await _testRepository.getWeatherData();
    await response.fold((error) {
      _failure = error;
    }, (weatherData) async {
      _weatherData = weatherData;
      isSuccess = true;
    });
    _inProgress = false;
    update();
    return isSuccess;
  }
}
