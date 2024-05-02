import 'package:demo/features/home/domain/entities/data.dart';

class TestData {
  final String status;
  final List<Data> data;
  final String message;

  TestData(
      {required this.status, required this.data, required this.message});
}
