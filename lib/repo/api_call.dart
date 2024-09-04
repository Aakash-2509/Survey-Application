import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import '../global/global.dart';



class API {
  final Dio _dio = Dio();

  API() {
    _dio.options.baseUrl = Global.hostUrl;
    _dio.interceptors.add(TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseMessage: true,
        ),
    ),);
  }

  Dio get sendRequest => _dio;
}
