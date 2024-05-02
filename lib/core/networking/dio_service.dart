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
      connectTimeout:
          const Duration(seconds: AppConsts.networkingTimeOutDuration),
      receiveTimeout:
          const Duration(seconds: AppConsts.networkingTimeOutDuration),
    );
  }

  Future<dynamic> get(String path) async {
    print("path : $path");
    try {
      Response response = await _dio.get(path);
      return response.data;
    } catch (e) {
      print('Error : $e');
      rethrow;
    }
  }
}
