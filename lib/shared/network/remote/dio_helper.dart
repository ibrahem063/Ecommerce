import 'package:dio/dio.dart';

class DioHelper
{
 static late Dio dio;
  static init () {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://run.mocky.io/v3/c60b55e1-fabf-4fe4-98a2-1f9e9f80ed0a',
          receiveDataWhenStatusError: true,
        )
    );
  }

    static Future<Response> getdata({
      required String path
    })async
    {
      return await dio.get(path);
    }

}

