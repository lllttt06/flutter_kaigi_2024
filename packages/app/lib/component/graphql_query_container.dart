import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'graphql_query_container.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class DebugLoadingState extends _$DebugLoadingState {
  @override
  bool build() => false;

  void update({required bool isLoading}) {
    if (kReleaseMode) return;
    state = isLoading;
  }
}

/// GraphQL useQuery 用のコンテナウィジェット
class GraphQLQueryContainer<TParsed> extends HookConsumerWidget {
  const GraphQLQueryContainer({
    required this.query,
    required this.child,
    this.fakeData,
    this.onLoadingWidget,
    this.onEmptyWidget,
    this.onErrorWidget,
    this.onStart,
    this.onComplete,
    this.onError,
    this.crossFade = true,
    super.key,
  });

  const GraphQLQueryContainer.sliver({
    required this.query,
    required this.child,
    this.fakeData,
    this.onLoadingWidget = const SliverToBoxAdapter(),
    this.onEmptyWidget = const SliverToBoxAdapter(),
    this.onErrorWidget,
    this.onStart,
    this.onComplete,
    this.onError,
    this.crossFade = true,
    super.key,
  });

  final QueryHookResult<TParsed> query;
  final Widget Function(TParsed data) child;
  final TParsed? fakeData;
  final Widget? onLoadingWidget;
  final Widget? onEmptyWidget;
  final Widget Function(OperationException? error, StackTrace? stackTrace)?
      onErrorWidget;
  final VoidCallback? onStart;
  final VoidCallback? onComplete;
  final ValueSetter<OperationException?>? onError;
  final bool crossFade;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(fakeData != null || onLoadingWidget != null);
    final isLoadingForDebug = ref.watch(debugLoadingStateProvider);

    final result = query.result;

    // 開始時にコールバックを呼ぶ
    useEffect(() {
      onStart?.call();
      return () {};
    });

    if (isLoadingForDebug) {
      // ローディング状態
      return onLoadingWidget ??
          Skeletonizer(
              effect: ShimmerEffect.raw(
                colors: Theme.of(context).brightness == Brightness.dark
                    ? const [
                        Color(0xFF303030),
                        Color(0xFF303030),
                        Color(0xFF5D5D5D),
                        Color(0xFF303030),
                        Color(0xFF303030),
                      ]
                    : const [
                        Color(0xFFD8D8D8),
                        Color(0xFFD8D8D8),
                        Color(0xFFF2F2F2),
                        Color(0xFFD8D8D8),
                        Color(0xFFD8D8D8),
                      ],
                stops: const [
                  0.0,
                  0.35,
                  0.5,
                  0.65,
                  1.0,
                ],
              ),
              child: child(fakeData!));
    }

    if (result.hasException) {
      debugPrint('GraphQLQueryContainer: ${result.exception}');
      onError?.call(result.exception);
    }

    if (result.hasException && onErrorWidget != null) {
      return onErrorWidget!(
        result.exception,
        StackTrace.current,
      );
    } else if (result.data == null && result.isNotLoading) {
      // データがない場合
      return onEmptyWidget ?? const SizedBox();
    } else if (result.data == null && result.isLoading) {
      // ローディング状態
      return onLoadingWidget ??
          Skeletonizer(
              effect: ShimmerEffect.raw(
                colors: Theme.of(context).brightness == Brightness.dark
                    ? const [
                        Color(0xFF303030),
                        Color(0xFF303030),
                        Color(0xFF5D5D5D),
                        Color(0xFF303030),
                        Color(0xFF303030),
                      ]
                    : const [
                        Color(0xFFD8D8D8),
                        Color(0xFFD8D8D8),
                        Color(0xFFF2F2F2),
                        Color(0xFFD8D8D8),
                        Color(0xFFD8D8D8),
                      ],
                stops: const [
                  0.0,
                  0.35,
                  0.5,
                  0.65,
                  1.0,
                ],
              ),
              child: child(fakeData!));
    } else {
      onComplete?.call();
      return child(result.parsedData as TParsed);
    }
  }
}
