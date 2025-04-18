import 'package:dio/dio.dart';

class DioErrorHandler {
  static String handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection Timeout";
      case DioExceptionType.sendTimeout:
        return "Send Timeout";
      case DioExceptionType.receiveTimeout:
        return "Receive Timeout";
      case DioExceptionType.badResponse:
        return "Received invalid status code: ${error.response?.statusCode}";
      case DioExceptionType.cancel:
        return "Request Cancelled";
      case DioExceptionType.unknown:
        return "Unexpected Error: ${error.message}";
      default:
        return "Unknown Error";
    }
  }
}