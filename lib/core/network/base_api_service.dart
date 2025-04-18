import 'package:dio/dio.dart';

abstract class BaseApiService {
  Future<dynamic> getGetApiServices(String url, Options options);
  Future<dynamic> getPostApiServices(String url, Options options, Object? body);
  // Future<dynamic> getPutApiServices(String url);
  // Future<dynamic> getDeleteApiServices(String url);
  // Future<dynamic> getPatchApiServices(String url);
}