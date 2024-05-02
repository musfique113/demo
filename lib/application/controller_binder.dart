import 'package:demo/core/network_executor/dio_set_up.dart';
import 'package:demo/core/network_executor/network_executor.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(getDioInstance());
    Get.put(NetworkExecutor(Get.find<Dio>()));
  }
}
