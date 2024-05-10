import 'package:demo/features/home/presentation/state_holders/test_data_controller.dart';
import 'package:demo/features/home/presentation/ui/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //You can archive this by using dependency injection
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<ValueController>(builder: (c) {
          return Column(
            children: [
              Text(c.value.toString()),
              OutlinedButton(
                onPressed: () {
                  c.onAddValue();
                },
                child: const Text("+"),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  c.onRemoveValue();
                },
                child: const Text("-"),
              ),
              OutlinedButton(
                onPressed: () {
                  Get.to(() => const NextScreen());
                },
                child: const Text("Next Screen"),
              ),
            ],
          );
        }),
      ),
    );
  }
}
