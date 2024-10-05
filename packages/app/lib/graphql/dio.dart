import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class DioLoggerState extends _$DioLoggerState {
  static const _emptyInterceptor = Interceptor();
  static final _dioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseHeader: true,
    maxWidth: 180,
    logPrint: (log) => debugPrint(log.toString()),
  );

  @override
  Interceptor build() {
    if (kReleaseMode) {
      return _emptyInterceptor;
    }

    return _dioLogger;
  }

  void update({required bool enabled}) {
    if (kReleaseMode) {
      state = _emptyInterceptor;
      return;
    }

    state = enabled ? _dioLogger : _emptyInterceptor;
  }
}

@Riverpod(keepAlive: true, dependencies: [DioLoggerState])
Dio graphQLDio(GraphQLDioRef ref) {
  final dioLogger = ref.watch(dioLoggerStateProvider);
  return Dio()..interceptors.add(dioLogger);
}
