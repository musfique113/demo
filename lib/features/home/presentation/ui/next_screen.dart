import 'package:demo/features/home/presentation/state_holders/test_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<ValueController>(builder: (c) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  c.value.toString(),
                ),
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
              ],
            ),
          );
        }),
      ),
    );
  }
}
