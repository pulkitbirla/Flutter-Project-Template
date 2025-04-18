import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Dio networkInterceptor() {
  Dio dio = Dio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        if (kDebugMode) {
          print("Request: ${options.method} ${options.path}");
        }
        // You might add headers (like Authorization) here if needed
        return handler.next(options);
      },
      onResponse:
          (Response response, ResponseInterceptorHandler responseHandler) {
        if (kDebugMode) {
          print("Response: ${response.statusCode}");
        }
        // Process response if needed
        return responseHandler.next(response);
      },
      onError: (DioException exception, ErrorInterceptorHandler handler) {
        if (kDebugMode) {
          print("Error: ${exception.message}");
        }
        // Handle global errors or transformations here
        return handler.next(exception);
      },
    ),
  );

  return dio;
}
