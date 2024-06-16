import 'package:dartz/dartz.dart';
import 'package:demo/core/domain/data/model/api_failure.dart';
import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/core/network_executor/network_executor.dart';
import 'package:demo/core/network_executor/network_response.dart';
import 'package:demo/features/home/data/models/test_data_model.dart';
import 'package:demo/features/home/domain/entities/test_data.dart';

class {{name.pascalCase()}}Repository {
  final String _employeesDataUrl = 'employees';

  final NetworkExecutor _networkExecutor;

  {{name.pascalCase()}}Repository(this._networkExecutor);

  Future<Either<Failure, TestData>> getEmployeeData() async {
    final NetworkResponse response = await _networkExecutor.getRequest(
      path: _employeesDataUrl,
    );
    if (response.statusCode == 200) {
      TestDataModel testDataModel =
          TestDataModel.fromJson(response.body);
      //response.body can be vary ons different api , like body['data'],
      return Right(testDataModel.toEntity());
    } else {
      return Left(ApiFailure.fromJson(response.body).toEntity());
    }
  }
}
