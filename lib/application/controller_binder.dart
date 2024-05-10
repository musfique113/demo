import 'package:demo/features/home/presentation/state_holders/test_data_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(ValueController());
  }

}