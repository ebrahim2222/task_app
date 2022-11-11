import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:test_app/core/values/values_manager.dart';

class DioService extends GetxService {
  static Dio? dio;
  Future<DioService> init() async {
    dio = Dio(
      BaseOptions(
          baseUrl: ValuesManager.baseUrl, receiveDataWhenStatusError: true),
    )..interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        error: true,
        responseHeader: false,
        responseBody: true,
        requestHeader: false));
    return this;
  }

  static Future getData({String? path, data}) async {
    try {
      dio!.options.headers = {
        "Content-Type": "application/json",
      };
      return await dio!.get(path!, queryParameters: data);
    } catch (ex) {
      print(ex);
    }
  }

  static Future postData({String? path, data}) async {
    try {
      dio!.options.headers = {
        "Content-Type": "application/json",
      };
      return await dio!.post(path!, data: data);
    } catch (ex) {
      print(ex);
    }
  }
}
