import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RestClient {
  factory RestClient() {
    _singleton ??= RestClient._internal(dotenv.env['API_BASE_URL'] ?? '');
    return _singleton!;
  }

  RestClient._internal(this.baseUrl) {
    final BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(minutes: 15),
      contentType: 'application/json',
      responseType: ResponseType.json,
    );
    dio = Dio(options);
  }

  static RestClient? _singleton;
  late final Dio dio;
  final String baseUrl;

  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post({
    required String path,
    Map<String, dynamic>? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await dio.post(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await dio.put(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final Response response = await dio.delete(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    dio.close();
    _singleton = null;
  }
}
