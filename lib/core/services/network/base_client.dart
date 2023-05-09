import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webpoint_test/core/services/network/network_connection.dart';

import '../../constants/api_constants.dart';
import '../../models/exceptions/network_exception.dart';

final baseClientProvider = Provider((ref) => BaseClient(ref));

class BaseClient {
  BaseClient(this.ref);
  final Ref ref;

  final Dio _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseurl,
      contentType: Headers.jsonContentType,
      receiveTimeout: 50000,
      connectTimeout: 50000,
      sendTimeout: 50000,
      headers: {"accept": "application/json"},
      responseType: ResponseType.json));

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    if (await ref.read(networkConnectionProvider).checkConnection()) {
      try {
        final res = await _dio.get(
          uri,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );
        return res.data;
      } on DioError catch (e) {
        throw e.toNetworkException();
      } catch (e) {
        rethrow;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> getManualDio(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final Dio dio = Dio(BaseOptions(
      contentType: Headers.jsonContentType,
    ));
    try {
      final res = await dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return res.data;
    } on DioError catch (e) {
      throw e.toNetworkException();
    } catch (e) {
      rethrow;
    }
  }

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> post(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    if (await ref.read(networkConnectionProvider).checkConnection()) {
      try {
        final res = await _dio.post(
          uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        );
        return res.data;
      } on DioError catch (e) {
        throw e.toNetworkException();
      } catch (e) {
        rethrow;
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  /// return response body or throws [NetworkExceptions]
  Future<dynamic> put(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );

      return response.data;
    } on DioError catch (e) {
      throw e.toNetworkException();
    } on NetworkExceptions catch (_) {
      rethrow;
    }
  }
}
