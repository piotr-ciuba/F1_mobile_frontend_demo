import 'package:dio/dio.dart';

extension DioResponseExtensions on Response {
  bool get isSuccess {
    if (statusCode == null) {
      return false;
    }

    return statusCode! >= 200 && statusCode! <= 299;
  }
}
