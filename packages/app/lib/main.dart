import 'package:app/component/devtools_ext_container.dart';
import 'package:app/graphql/graphql_client_provider.dart';
import 'package:app/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: GraphQLApp()));
}

class GraphQLApp extends HookConsumerWidget {
  const GraphQLApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client =
        useValueNotifier<GraphQLClient>(ref.read(graphQLClientProvider));

    ref.listen(graphQLClientProvider, (_, next) {
      client.value = next;
    });

    return GraphQLProvider(
      client: client,
      child: const DevToolsExtContainer(
        child: MyApp(),
      ),
    );
  }
}