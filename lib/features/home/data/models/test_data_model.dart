import 'package:demo/features/home/data/models/data_model.dart';
import 'package:demo/features/home/domain/entities/test_data.dart';

class TestDataModel {
  String? status;
  List<DataModel>? data;
  String? message;

  TestDataModel({this.status, this.data, this.message});

  TestDataModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <DataModel>[];
      json['data'].forEach((v) {
        data!.add(DataModel.fromJson(v));
      });
    }
    message = json['message'];
  }

  TestData toEntity() => TestData(
      status: status ?? '',
      data: data?.map((e) => e.toEntity()).toList() ?? [],
      message: message ?? '');
}
