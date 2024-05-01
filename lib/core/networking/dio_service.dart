import 'package:dio/dio.dart';
import 'package:live_assesment/core/helpers/consts.dart';

class DioService {
  final Dio _dio = Dio();

  DioService() {
    _configureDio();
  }

  _configureDio() {
    _dio.options = BaseOptions(
        baseUrl: AppConsts.apiKey,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          "X-Auth-Token": AppConsts.token,
        });
  }

  Future<Response> get(String path) async {
    try {
      Response response = await _dio.get(path);
      return response.data;
    } catch (e) {
      print('Error : $e');
      rethrow;
    }
  }
}
