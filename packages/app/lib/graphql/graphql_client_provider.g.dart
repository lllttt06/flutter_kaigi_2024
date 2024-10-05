// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$graphQLClientHash() => r'95154aa7f35b2bd894d21e65d47b2cc07ed3251f';

/// See also [graphQLClient].
@ProviderFor(graphQLClient)
final graphQLClientProvider = Provider<GraphQLClient>.internal(
  graphQLClient,
  name: r'graphQLClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$graphQLClientHash,
  dependencies: <ProviderOrFamily>[graphQLDioProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    graphQLDioProvider,
    ...?graphQLDioProvider.allTransitiveDependencies
  },
);

typedef GraphQLClientRef = ProviderRef<GraphQLClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
