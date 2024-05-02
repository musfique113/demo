import 'package:dartz/dartz.dart';
import 'package:demo/core/domain/data/model/api_failure.dart';
import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/core/network_executor/network_executor.dart';
import 'package:demo/core/network_executor/network_response.dart';
import 'package:demo/features/weather_forcast/data/models/forecast_list_model.dart';
import 'package:demo/features/weather_forcast/domain/entities/forecast_list.dart';

class WeatherForecastRepository {
  final String _getWeatherDataUrl =
      'forecast?lat=23.7104&lon=90.4074&appid=0dadc0ec41869d72cab605ebf70d5c96';

  final NetworkExecutor _networkExecutor;

  WeatherForecastRepository(this._networkExecutor);

  Future<Either<Failure, List<ForecastList>>> getForecastData() async {
    final NetworkResponse response = await _networkExecutor.getRequest(
      path: _getWeatherDataUrl,
    );
    if (response.statusCode == 200) {
      List<ForecastList> forecastList = [];
      for (var item in response.body['list']) {
        forecastList.add(ForecastListModel.fromJson(item).toEntity());
      }
      return Right(forecastList);
    } else {
      return Left(ApiFailure.fromJson(response.body).toEntity());
    }
  }
}
