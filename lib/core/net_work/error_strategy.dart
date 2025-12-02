import 'package:dio/dio.dart';
import 'package:turbo/core/net_work/api_error_model.dart';

abstract class ErrorStrategy {
  bool canHandle(DioException exception);
  ApiErrorModel handle(DioException exception);
}
