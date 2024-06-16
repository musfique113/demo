import 'package:demo/features/home/domain/entities/data.dart';

class DataModel {
  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? profileImage;

  DataModel(
      {this.id,
      this.employeeName,
      this.employeeSalary,
      this.employeeAge,
      this.profileImage});

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
    profileImage = json['profile_image'];
  }

  Data toEntity() => Data(
      id: id ?? 0,
      employeeName: employeeName ?? '',
      employeeSalary: employeeSalary ?? 0,
      employeeAge: employeeAge ?? 0,
      profileImage: profileImage ?? '');
}
