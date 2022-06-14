import 'package:dio/dio.dart';

import '../utils/dev_utils.dart';

LogInterceptor get logInterceptor => LogInterceptor(
    responseBody: true,
    requestBody: true,
    logPrint: (message) {
      safeLog(message.toString());
    });
