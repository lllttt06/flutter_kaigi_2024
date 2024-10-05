import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:app/component/graphql_query_container.dart';
import 'package:app/graphql/dio.dart';
import 'package:app/graphql/graphql_client_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DevToolsExtKey {
  static const cacheExtKey = 'ext.graphql.getCache';
  static const cacheExtResultKey = 'value';
  static const fetchDioLoggerExtKey = 'ext.dio.fetchLogger';
  static const updateDioLoggerExtKey = 'ext.dio.updateLogger';
  static const dioLoggerExtValueKey = 'enabled';
  static const fetchLoadingStateExtKey = 'ext.loadingState.fetch';
  static const updateLoadingStateExtKey = 'ext.loadingState.update';
  static const loadingStateExtValueKey = 'loading';
}

/// DevTools Extension 側で使用するデータの登録を一括で行うための Widget
class DevToolsExtContainer extends HookConsumerWidget {
  const DevToolsExtContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        if ((!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST')) ||
            kReleaseMode) return;

        registerExtension(
          DevToolsExtKey.cacheExtKey,
          (_, __) async {
            return ServiceExtensionResponse.result(
              jsonEncode({
                DevToolsExtKey.cacheExtResultKey:
                    ref.read(graphQLClientProvider).cache.store.toMap(),
              }),
            );
          },
        );
        registerExtension(
          DevToolsExtKey.fetchDioLoggerExtKey,
          (_, __) async {
            final enabled = ref.read(dioLoggerStateProvider) is PrettyDioLogger;
            return ServiceExtensionResponse.result(
              jsonEncode({
                DevToolsExtKey.dioLoggerExtValueKey: enabled,
              }),
            );
          },
        );
        registerExtension(
          DevToolsExtKey.updateDioLoggerExtKey,
          (_, parameters) async {
            final enabled = jsonDecode(
                parameters[DevToolsExtKey.dioLoggerExtValueKey] ?? '') as bool?;
            ref
                .read(dioLoggerStateProvider.notifier)
                .update(enabled: enabled ?? false);

            return ServiceExtensionResponse.result(jsonEncode({}));
          },
        );

        registerExtension(
          DevToolsExtKey.fetchLoadingStateExtKey,
          (_, __) async {
            final isLoading = ref.read(debugLoadingStateProvider);
            return ServiceExtensionResponse.result(
              jsonEncode({
                DevToolsExtKey.loadingStateExtValueKey: isLoading,
              }),
            );
          },
        );
        registerExtension(
          DevToolsExtKey.updateLoadingStateExtKey,
          (_, parameters) async {
            final isLoading = jsonDecode(
              parameters[DevToolsExtKey.loadingStateExtValueKey] ?? '',
            ) as bool?;
            ref
                .read(debugLoadingStateProvider.notifier)
                .update(isLoading: isLoading ?? false);

            return ServiceExtensionResponse.result(jsonEncode({}));
          },
        );

        return null;
      },
      const [],
    );

    return child;
  }
}
