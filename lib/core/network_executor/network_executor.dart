import 'package:dio/dio.dart';
import 'network_response.dart';

class NetworkExecutor {
  final Dio _dio;

  NetworkExecutor(this._dio);

  Future<NetworkResponse> getRequest({
    required String path,
    Map<String, dynamic>? queryParams,
  }) async {
    final Response response = await _dio.get(
      path,
      queryParameters: queryParams,
    );
    return NetworkResponse(
      response.statusCode ?? -1,
      response.data,
      response.headers,
      response.statusMessage ?? '',
    );
  }

  Future<NetworkResponse> postRequest({
    required String path,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
    dynamic data,
    Options? options,
  }) async {
    final Response response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParams,
      options: options,
    );
    return NetworkResponse(
      response.statusCode ?? -1,
      response.data,
      response.headers,
      response.statusMessage ?? '',
    );
  }

  Future<NetworkResponse> putRequest({
    required String path,
    Map<String, dynamic>? queryParams,
    dynamic data,
  }) async {
    final Response response =
    await _dio.put(path, data: data, queryParameters: queryParams);
    return NetworkResponse(
      response.statusCode ?? -1,
      response.data,
      response.headers,
      response.statusMessage ?? '',
    );
  }
}