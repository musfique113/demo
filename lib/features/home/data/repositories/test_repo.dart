import 'package:dartz/dartz.dart';
import 'package:demo/core/domain/data/model/api_failure.dart';
import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/core/network_executor/network_executor.dart';
import 'package:demo/core/network_executor/network_response.dart';
import 'package:demo/features/home/data/models/weather_data_model.dart';
import 'package:demo/features/home/domain/entities/weather_data.dart';

class WeatherRepository {
  final String _getWeatherDataUrl =
      'weather?q=Dhaka&appid=0dadc0ec41869d72cab605ebf70d5c96';

  final NetworkExecutor _networkExecutor;

  WeatherRepository(this._networkExecutor);

  Future<Either<Failure, WeatherData>> getWeatherData() async {
    final NetworkResponse response = await _networkExecutor.getRequest(
      path: _getWeatherDataUrl,
    );
    if (response.statusCode == 200) {
      WeatherDataModel weatherDataModel =
          WeatherDataModel.fromJson(response.body);
      //response.body can be vary ons different api , like body['data'],
      return Right(weatherDataModel.toEntity());
    } else {
      return Left(ApiFailure.fromJson(response.body).toEntity());
    }
  }
}
