// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$graphQLDioHash() => r'a689ebd267c4fe20a1e91021c6389549ee400fb4';

/// See also [graphQLDio].
@ProviderFor(graphQLDio)
final graphQLDioProvider = Provider<Dio>.internal(
  graphQLDio,
  name: r'graphQLDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$graphQLDioHash,
  dependencies: <ProviderOrFamily>[dioLoggerStateProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    dioLoggerStateProvider,
    ...?dioLoggerStateProvider.allTransitiveDependencies
  },
);

typedef GraphQLDioRef = ProviderRef<Dio>;
String _$dioLoggerStateHash() => r'cac0bb7258aa71162c246099ae7153f17710408e';

/// See also [DioLoggerState].
@ProviderFor(DioLoggerState)
final dioLoggerStateProvider =
    NotifierProvider<DioLoggerState, Interceptor>.internal(
  DioLoggerState.new,
  name: r'dioLoggerStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$dioLoggerStateHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$DioLoggerState = Notifier<Interceptor>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
