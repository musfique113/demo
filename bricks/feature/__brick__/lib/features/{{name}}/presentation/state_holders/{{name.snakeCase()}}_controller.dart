import 'package:demo/core/domain/entites/failure.dart';
import 'package:demo/features/home/data/repositories/test_repo.dart';
import 'package:demo/features/home/domain/entities/test_data.dart';
import 'package:get/get.dart';

class {{name.pascalCase()}}Controller extends GetxController {
  final TestRepository _testRepository;

  {{name.pascalCase()}}Controller(this._testRepository);

  bool _inProgress = true;
  late TestData _testData;
  late Failure _failure;

  bool get inProgress => _inProgress;

  TestData get testData => _testData;

  Failure get error => _failure;

  Future<bool> getEmployeeData() async {
    bool isSuccess = false;
    _inProgress = true;
    update();

    final response = await _testRepository.getEmployeeData();
    await response.fold((error) {
      _failure = error;
    }, (employeeData) async {
      _testData = employeeData;
      isSuccess = true;
    });
    _inProgress = false;
    update();
    return isSuccess;
  }

}

