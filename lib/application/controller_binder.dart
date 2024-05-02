import 'package:demo/core/network_executor/dio_set_up.dart';
import 'package:demo/core/network_executor/network_executor.dart';
import 'package:demo/features/home/data/repositories/test_repo.dart';
import 'package:demo/features/home/presentation/state_holders/test_data_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(getDioInstance());
    Get.put(NetworkExecutor(Get.find<Dio>()));
    Get.put(
      TestRepository(Get.find<NetworkExecutor>()),
    );
    Get.put(
      TestDataController(Get.find<TestRepository>()),
    );
  }
}
