import 'package:demo/core/domain/entites/success.dart';

class ApiSuccess {
  bool? success;
  int? responseCode;
  String? message;

  ApiSuccess({this.success, this.responseCode, this.message});

  ApiSuccess.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    responseCode = json['response_code'];
    message = json['message'];
  }

  Success toEntity() {
    return Success(message);
  }
}
