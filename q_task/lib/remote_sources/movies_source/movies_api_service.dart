import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import '../../common/network/flavor_config.dart';
import '../../common/network/log_interceptor.dart';
import 'movies_client.dart';

abstract class DevicesApiService {
  MoviesClient get moviesClient;
}

@Injectable(as: DevicesApiService)
class DevicesApiServiceImpl implements DevicesApiService {
  DevicesApiServiceImpl(this._flavorConfig) {
    setUpServices();
  }
  final FlavorConfig _flavorConfig;
  late final Dio _restDio;
  late final MoviesClient _moviesClient;

  @override
  MoviesClient get moviesClient => _moviesClient;

  QueuedInterceptorsWrapper get queuedInterceptor {
    return QueuedInterceptorsWrapper(onRequest: (options, handler) async {
      const authToken =
          'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiOGQ3Zjc2OTQ3OTA0YTAxMTI4NmRjNzMyYzU1MjM0ZSIsInN1YiI6IjYwMzM3ODBiMTEzODZjMDAzZjk0ZmM2YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XYuIrLxvowrkevwKx-KhOiOGZ2Tn-R8tEksXq842kX4';
      const token = 'Bearer $authToken';
      _restDio.options.headers.addAll({'Authorization': token});
      options.headers.addAll({'Authorization': token});
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }, onError: (error, handler) async {
      return handler.next(error);
    });
  }

  void setUpServices() {
    _restDio = Dio(
      BaseOptions(baseUrl: _flavorConfig.getBaseUrl(), headers: {
        'Content-Type': 'application/json',
      }),
    );
    _restDio.interceptors.add(queuedInterceptor);
    _restDio.interceptors.add(logInterceptor);
    _moviesClient = MoviesClient(_restDio);
  }
}
