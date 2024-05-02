import 'package:demo/core/domain/entites/failure.dart';

class ApiFailure {
  bool? success;
  int? responseCode;
  String? message;

  ApiFailure({this.success, this.responseCode, this.message});

  ApiFailure.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    responseCode = json['response_code'];
    message = json['message'];
  }

  Failure toEntity() {
    return Failure(message ?? 'Something went wrong.');
  }
}
