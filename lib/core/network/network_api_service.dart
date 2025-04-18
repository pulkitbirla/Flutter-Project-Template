import 'package:dio/dio.dart';

import 'base_api_service.dart';
import 'dio_helper.dart';

class NetworkApiService extends BaseApiService {
  Dio dio = networkInterceptor();
  @override
  Future getGetApiServices(String url, Options options) async {
    return dio.get(url, options: options);
  }

  @override
  Future getPostApiServices(String url, Options options, Object? body) async {
    return dio.post(url, options: options, data: body);
  }
}