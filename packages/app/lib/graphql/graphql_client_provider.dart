import 'package:app/graphql/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [graphQLDio])
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  final dio = ref.watch(graphQLDioProvider);
  final link = DioLink('https://graphql-pokemon2.vercel.app/', client: dio);

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  );
}
