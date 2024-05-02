import 'package:demo/application/app_configurations/app_configurations.dart';
import 'package:demo/application/app_configurations/base_urls.dart';
import 'package:dio/dio.dart';


import 'dio_interceptor.dart';

Dio getDioInstance() {
  final Dio dio = Dio(
    BaseOptions(
      connectTimeout: AppConfiguration.connectionTimeOut,
      receiveTimeout: AppConfiguration.receiveTimeOut,
      sendTimeout: AppConfiguration.sendTimeOut,
      baseUrl: BaseUrl.baseUrl,
    ),
  );
  dio.interceptors.add(DioInterceptor());
  return dio;
}