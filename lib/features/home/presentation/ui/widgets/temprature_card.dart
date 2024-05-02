import 'package:demo/application/theme_data/app_colors.dart';
import 'package:demo/application/theme_data/text_styles.dart';
import 'package:demo/features/home/domain/entities/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TemperatureCard extends StatelessWidget {
  final Main main;

  const TemperatureCard({
    super.key,
    required this.main,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow(main.temp.toString(), main.feelsLike.toString(),
            'Temperature', 'Feels likes'),
        const Gap(10),
        _buildRow(main.tempMin.toString(), main.tempMax.toString(), 'Temp Min',
            'Temp Max'),
        const Gap(10),
        _buildRow(main.humidity.toString(), main.pressure.toString(),
            'Humidity', 'Pressure'),
      ],
    );
  }

  Row _buildRow(
      String left, String right, String titleLeft, String titleRight) {
    return Row(
      children: [
        _buildCard(left, titleLeft),
        const Gap(20),
        _buildCard(right, titleRight),
      ],
    );
  }

  Widget _buildCard(String text, String title) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: cherry,
          border: Border.all(width: 1, color: lavenderGray),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyles.heavy18.copyWith(color: Colors.white),
            ),
            Text(
              text,
              style: TextStyles.heavy18
                  .copyWith(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
