import 'package:demo/features/home/presentation/state_holders/weather_data_controller.dart';
import 'package:demo/features/home/presentation/ui/widgets/temprature_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<WeatherController>().getEmployeeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo app'),
      ),
      body: GetBuilder<WeatherController>(
        builder: (testDataController) {
          if (testDataController.inProgress) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("This is a demo app on Repository Pattern"),
                const Gap(20),
                TemperatureCard(main: testDataController.testData.main,)
              ],
            ),
          );
        },
      ),
    );
  }
}


