import 'package:demo/features/home/presentation/state_holders/test_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      Get.find<TestDataController>().getEmployeeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo app'),
      ),
      body: GetBuilder<TestDataController>(
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
                Text(testDataController.testData.message),
                Expanded(
                  child: ListView.builder(
                    itemCount: testDataController.testData.data.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      final data = testDataController.testData.data[index];
                      return ListTile(
                        title: Text(data.employeeName),
                        leading: Text(data.id.toString()),
                        subtitle: Text(data.employeeSalary.toString()),
                        trailing: CircleAvatar(
                          child: Text(data.employeeAge.toString()),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
