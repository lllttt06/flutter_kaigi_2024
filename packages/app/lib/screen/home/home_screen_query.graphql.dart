import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$pokemons {
  Query$pokemons({
    this.pokemons,
    this.$__typename = 'Query',
  });

  factory Query$pokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemons = json['pokemons'];
    final l$$__typename = json['__typename'];
    return Query$pokemons(
      pokemons: (l$pokemons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$pokemons$pokemons.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$pokemons$pokemons?>? pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemons = pokemons;
    _resultData['pokemons'] = l$pokemons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemons = pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemons == null ? null : Object.hashAll(l$pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$pokemons) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemons = pokemons;
    final lOther$pokemons = other.pokemons;
    if (l$pokemons != null && lOther$pokemons != null) {
      if (l$pokemons.length != lOther$pokemons.length) {
        return false;
      }
      for (int i = 0; i < l$pokemons.length; i++) {
        final l$pokemons$entry = l$pokemons[i];
        final lOther$pokemons$entry = lOther$pokemons[i];
        if (l$pokemons$entry != lOther$pokemons$entry) {
          return false;
        }
      }
    } else if (l$pokemons != lOther$pokemons) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$pokemons on Query$pokemons {
  CopyWith$Query$pokemons<Query$pokemons> get copyWith =>
      CopyWith$Query$pokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$pokemons<TRes> {
  factory CopyWith$Query$pokemons(
    Query$pokemons instance,
    TRes Function(Query$pokemons) then,
  ) = _CopyWithImpl$Query$pokemons;

  factory CopyWith$Query$pokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$pokemons;

  TRes call({
    List<Query$pokemons$pokemons?>? pokemons,
    String? $__typename,
  });
  TRes pokemons(
      Iterable<Query$pokemons$pokemons?>? Function(
              Iterable<
                  CopyWith$Query$pokemons$pokemons<Query$pokemons$pokemons>?>?)
          _fn);
}

class _CopyWithImpl$Query$pokemons<TRes>
    implements CopyWith$Query$pokemons<TRes> {
  _CopyWithImpl$Query$pokemons(
    this._instance,
    this._then,
  );

  final Query$pokemons _instance;

  final TRes Function(Query$pokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$pokemons(
        pokemons: pokemons == _undefined
            ? _instance.pokemons
            : (pokemons as List<Query$pokemons$pokemons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemons(
          Iterable<Query$pokemons$pokemons?>? Function(
                  Iterable<
                      CopyWith$Query$pokemons$pokemons<
                          Query$pokemons$pokemons>?>?)
              _fn) =>
      call(
          pokemons: _fn(_instance.pokemons?.map((e) => e == null
              ? null
              : CopyWith$Query$pokemons$pokemons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$pokemons<TRes>
    implements CopyWith$Query$pokemons<TRes> {
  _CopyWithStubImpl$Query$pokemons(this._res);

  TRes _res;

  call({
    List<Query$pokemons$pokemons?>? pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemons(_fn) => _res;
}

const documentNodeQuerypokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'pokemons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '50'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$pokemons _parserFn$Query$pokemons(Map<String, dynamic> data) =>
    Query$pokemons.fromJson(data);
typedef OnQueryComplete$Query$pokemons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$pokemons?,
);

class Options$Query$pokemons extends graphql.QueryOptions<Query$pokemons> {
  Options$Query$pokemons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$pokemons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$pokemons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$pokemons(data),
                  ),
          onError: onError,
          document: documentNodeQuerypokemons,
          parserFn: _parserFn$Query$pokemons,
        );

  final OnQueryComplete$Query$pokemons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$pokemons
    extends graphql.WatchQueryOptions<Query$pokemons> {
  WatchOptions$Query$pokemons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$pokemons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerypokemons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$pokemons,
        );
}

class FetchMoreOptions$Query$pokemons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$pokemons({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerypokemons,
        );
}

extension ClientExtension$Query$pokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$pokemons>> query$pokemons(
          [Options$Query$pokemons? options]) async =>
      await this.query(options ?? Options$Query$pokemons());
  graphql.ObservableQuery<Query$pokemons> watchQuery$pokemons(
          [WatchOptions$Query$pokemons? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$pokemons());
  void writeQuery$pokemons({
    required Query$pokemons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerypokemons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$pokemons? readQuery$pokemons({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerypokemons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$pokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$pokemons> useQuery$pokemons(
        [Options$Query$pokemons? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$pokemons());
graphql.ObservableQuery<Query$pokemons> useWatchQuery$pokemons(
        [WatchOptions$Query$pokemons? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$pokemons());

class Query$pokemons$Widget extends graphql_flutter.Query<Query$pokemons> {
  Query$pokemons$Widget({
    widgets.Key? key,
    Options$Query$pokemons? options,
    required graphql_flutter.QueryBuilder<Query$pokemons> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$pokemons(),
          builder: builder,
        );
}

class Query$pokemons$pokemons {
  Query$pokemons$pokemons({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Query$pokemons$pokemons.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$pokemons$pokemons(
      id: (l$id as String),
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$pokemons$pokemons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$pokemons$pokemons on Query$pokemons$pokemons {
  CopyWith$Query$pokemons$pokemons<Query$pokemons$pokemons> get copyWith =>
      CopyWith$Query$pokemons$pokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$pokemons$pokemons<TRes> {
  factory CopyWith$Query$pokemons$pokemons(
    Query$pokemons$pokemons instance,
    TRes Function(Query$pokemons$pokemons) then,
  ) = _CopyWithImpl$Query$pokemons$pokemons;

  factory CopyWith$Query$pokemons$pokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$pokemons$pokemons;

  TRes call({
    String? id,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$pokemons$pokemons<TRes>
    implements CopyWith$Query$pokemons$pokemons<TRes> {
  _CopyWithImpl$Query$pokemons$pokemons(
    this._instance,
    this._then,
  );

  final Query$pokemons$pokemons _instance;

  final TRes Function(Query$pokemons$pokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$pokemons$pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$pokemons$pokemons<TRes>
    implements CopyWith$Query$pokemons$pokemons<TRes> {
  _CopyWithStubImpl$Query$pokemons$pokemons(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}
