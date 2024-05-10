import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ValueController extends GetxController {
  int _value = 10;

  int get value => _value;

  onAddValue() {
    _value++;
    update();
    if (kDebugMode) {
      print(_value);
    }
  }

  void onRemoveValue() {
    _value--;
    update();
    if (kDebugMode) {
      print(_value);
    }
  }
}
