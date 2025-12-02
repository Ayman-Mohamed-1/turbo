import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:turbo/core/net_work/apiLocalStatusCode.dart';
import 'package:turbo/core/net_work/api_error_model.dart';

import 'error_strategy.dart';
import 'strategies.dart';

class ApiErrorHandler {
  static final List<ErrorStrategy> _strategies = [
    ConnectionErrorStrategy(),
    BadCertificateStrategy(),
    CancelErrorStrategy(),
    ConnectionTimeoutStrategy(),
    SendTimeoutStrategy(),
    ReceiveTimeoutStrategy(),
    BadResponseStrategy(),
    UnknownErrorStrategy(),
  ];

  static ApiErrorModel handler(dynamic e) {
    if (e is DioException) {
      for (var strategy in _strategies) {
        if (strategy.canHandle(e)) {
          return strategy.handle(e);
        }
      }
    }

    return ApiErrorModel(
      massege: 'Unexpected Error',
      statusCode: ApiLocalStatusCode.unexpectedError,
      icon: Icons.warning_amber,
    );
  }
}
