import 'package:demo/application/controller_binder.dart';
import 'package:demo/application/theme_data/theme_data.dart';
import 'package:demo/features/home/presentation/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinder(),
      title: 'Flutter Demo',
      theme: appThemeData,
      home: const HomeScreen(),
    );
  }
}
