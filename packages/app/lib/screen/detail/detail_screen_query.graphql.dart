import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$detail {
  factory Variables$Query$detail({
    String? id,
    String? name,
  }) =>
      Variables$Query$detail._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Variables$Query$detail._(this._$data);

  factory Variables$Query$detail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$detail._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Query$detail<Variables$Query$detail> get copyWith =>
      CopyWith$Variables$Query$detail(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$detail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$detail<TRes> {
  factory CopyWith$Variables$Query$detail(
    Variables$Query$detail instance,
    TRes Function(Variables$Query$detail) then,
  ) = _CopyWithImpl$Variables$Query$detail;

  factory CopyWith$Variables$Query$detail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$detail;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Variables$Query$detail<TRes>
    implements CopyWith$Variables$Query$detail<TRes> {
  _CopyWithImpl$Variables$Query$detail(
    this._instance,
    this._then,
  );

  final Variables$Query$detail _instance;

  final TRes Function(Variables$Query$detail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Query$detail._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$detail<TRes>
    implements CopyWith$Variables$Query$detail<TRes> {
  _CopyWithStubImpl$Variables$Query$detail(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}

class Query$detail {
  Query$detail({
    this.pokemon,
    this.$__typename = 'Query',
  });

  factory Query$detail.fromJson(Map<String, dynamic> json) {
    final l$pokemon = json['pokemon'];
    final l$$__typename = json['__typename'];
    return Query$detail(
      pokemon: l$pokemon == null
          ? null
          : Query$detail$pokemon.fromJson((l$pokemon as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$detail$pokemon? pokemon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon = pokemon;
    _resultData['pokemon'] = l$pokemon?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon = pokemon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon = pokemon;
    final lOther$pokemon = other.pokemon;
    if (l$pokemon != lOther$pokemon) {
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

extension UtilityExtension$Query$detail on Query$detail {
  CopyWith$Query$detail<Query$detail> get copyWith => CopyWith$Query$detail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$detail<TRes> {
  factory CopyWith$Query$detail(
    Query$detail instance,
    TRes Function(Query$detail) then,
  ) = _CopyWithImpl$Query$detail;

  factory CopyWith$Query$detail.stub(TRes res) = _CopyWithStubImpl$Query$detail;

  TRes call({
    Query$detail$pokemon? pokemon,
    String? $__typename,
  });
  CopyWith$Query$detail$pokemon<TRes> get pokemon;
}

class _CopyWithImpl$Query$detail<TRes> implements CopyWith$Query$detail<TRes> {
  _CopyWithImpl$Query$detail(
    this._instance,
    this._then,
  );

  final Query$detail _instance;

  final TRes Function(Query$detail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail(
        pokemon: pokemon == _undefined
            ? _instance.pokemon
            : (pokemon as Query$detail$pokemon?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$detail$pokemon<TRes> get pokemon {
    final local$pokemon = _instance.pokemon;
    return local$pokemon == null
        ? CopyWith$Query$detail$pokemon.stub(_then(_instance))
        : CopyWith$Query$detail$pokemon(local$pokemon, (e) => call(pokemon: e));
  }
}

class _CopyWithStubImpl$Query$detail<TRes>
    implements CopyWith$Query$detail<TRes> {
  _CopyWithStubImpl$Query$detail(this._res);

  TRes _res;

  call({
    Query$detail$pokemon? pokemon,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$detail$pokemon<TRes> get pokemon =>
      CopyWith$Query$detail$pokemon.stub(_res);
}

const documentNodeQuerydetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'detail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
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
            name: NameNode(value: 'number'),
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
            name: NameNode(value: 'weight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'minimum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'maximum'),
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
            name: NameNode(value: 'height'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'minimum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'maximum'),
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
            name: NameNode(value: 'classification'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'types'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'resistant'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'attacks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'fast'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'damage'),
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
                name: NameNode(value: 'special'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'damage'),
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
          FieldNode(
            name: NameNode(value: 'weaknesses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'fleeRate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'maxCP'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'maxHP'),
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
Query$detail _parserFn$Query$detail(Map<String, dynamic> data) =>
    Query$detail.fromJson(data);
typedef OnQueryComplete$Query$detail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$detail?,
);

class Options$Query$detail extends graphql.QueryOptions<Query$detail> {
  Options$Query$detail({
    String? operationName,
    Variables$Query$detail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$detail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$detail? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$detail(data),
                  ),
          onError: onError,
          document: documentNodeQuerydetail,
          parserFn: _parserFn$Query$detail,
        );

  final OnQueryComplete$Query$detail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$detail
    extends graphql.WatchQueryOptions<Query$detail> {
  WatchOptions$Query$detail({
    String? operationName,
    Variables$Query$detail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$detail? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerydetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$detail,
        );
}

class FetchMoreOptions$Query$detail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$detail({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$detail? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerydetail,
        );
}

extension ClientExtension$Query$detail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$detail>> query$detail(
          [Options$Query$detail? options]) async =>
      await this.query(options ?? Options$Query$detail());
  graphql.ObservableQuery<Query$detail> watchQuery$detail(
          [WatchOptions$Query$detail? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$detail());
  void writeQuery$detail({
    required Query$detail data,
    Variables$Query$detail? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerydetail),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$detail? readQuery$detail({
    Variables$Query$detail? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerydetail),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$detail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$detail> useQuery$detail(
        [Options$Query$detail? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$detail());
graphql.ObservableQuery<Query$detail> useWatchQuery$detail(
        [WatchOptions$Query$detail? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$detail());

class Query$detail$Widget extends graphql_flutter.Query<Query$detail> {
  Query$detail$Widget({
    widgets.Key? key,
    Options$Query$detail? options,
    required graphql_flutter.QueryBuilder<Query$detail> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$detail(),
          builder: builder,
        );
}

class Query$detail$pokemon {
  Query$detail$pokemon({
    required this.id,
    this.number,
    this.name,
    this.weight,
    this.height,
    this.classification,
    this.types,
    this.resistant,
    this.attacks,
    this.weaknesses,
    this.fleeRate,
    this.maxCP,
    this.maxHP,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Query$detail$pokemon.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$height = json['height'];
    final l$classification = json['classification'];
    final l$types = json['types'];
    final l$resistant = json['resistant'];
    final l$attacks = json['attacks'];
    final l$weaknesses = json['weaknesses'];
    final l$fleeRate = json['fleeRate'];
    final l$maxCP = json['maxCP'];
    final l$maxHP = json['maxHP'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      weight: l$weight == null
          ? null
          : Query$detail$pokemon$weight.fromJson(
              (l$weight as Map<String, dynamic>)),
      height: l$height == null
          ? null
          : Query$detail$pokemon$height.fromJson(
              (l$height as Map<String, dynamic>)),
      classification: (l$classification as String?),
      types: (l$types as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      resistant:
          (l$resistant as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      attacks: l$attacks == null
          ? null
          : Query$detail$pokemon$attacks.fromJson(
              (l$attacks as Map<String, dynamic>)),
      weaknesses:
          (l$weaknesses as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      fleeRate: (l$fleeRate as num?)?.toDouble(),
      maxCP: (l$maxCP as int?),
      maxHP: (l$maxHP as int?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final Query$detail$pokemon$weight? weight;

  final Query$detail$pokemon$height? height;

  final String? classification;

  final List<String?>? types;

  final List<String?>? resistant;

  final Query$detail$pokemon$attacks? attacks;

  final List<String?>? weaknesses;

  final double? fleeRate;

  final int? maxCP;

  final int? maxHP;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$weight = weight;
    _resultData['weight'] = l$weight?.toJson();
    final l$height = height;
    _resultData['height'] = l$height?.toJson();
    final l$classification = classification;
    _resultData['classification'] = l$classification;
    final l$types = types;
    _resultData['types'] = l$types?.map((e) => e).toList();
    final l$resistant = resistant;
    _resultData['resistant'] = l$resistant?.map((e) => e).toList();
    final l$attacks = attacks;
    _resultData['attacks'] = l$attacks?.toJson();
    final l$weaknesses = weaknesses;
    _resultData['weaknesses'] = l$weaknesses?.map((e) => e).toList();
    final l$fleeRate = fleeRate;
    _resultData['fleeRate'] = l$fleeRate;
    final l$maxCP = maxCP;
    _resultData['maxCP'] = l$maxCP;
    final l$maxHP = maxHP;
    _resultData['maxHP'] = l$maxHP;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$weight = weight;
    final l$height = height;
    final l$classification = classification;
    final l$types = types;
    final l$resistant = resistant;
    final l$attacks = attacks;
    final l$weaknesses = weaknesses;
    final l$fleeRate = fleeRate;
    final l$maxCP = maxCP;
    final l$maxHP = maxHP;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$weight,
      l$height,
      l$classification,
      l$types == null ? null : Object.hashAll(l$types.map((v) => v)),
      l$resistant == null ? null : Object.hashAll(l$resistant.map((v) => v)),
      l$attacks,
      l$weaknesses == null ? null : Object.hashAll(l$weaknesses.map((v) => v)),
      l$fleeRate,
      l$maxCP,
      l$maxHP,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$classification = classification;
    final lOther$classification = other.classification;
    if (l$classification != lOther$classification) {
      return false;
    }
    final l$types = types;
    final lOther$types = other.types;
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    final l$resistant = resistant;
    final lOther$resistant = other.resistant;
    if (l$resistant != null && lOther$resistant != null) {
      if (l$resistant.length != lOther$resistant.length) {
        return false;
      }
      for (int i = 0; i < l$resistant.length; i++) {
        final l$resistant$entry = l$resistant[i];
        final lOther$resistant$entry = lOther$resistant[i];
        if (l$resistant$entry != lOther$resistant$entry) {
          return false;
        }
      }
    } else if (l$resistant != lOther$resistant) {
      return false;
    }
    final l$attacks = attacks;
    final lOther$attacks = other.attacks;
    if (l$attacks != lOther$attacks) {
      return false;
    }
    final l$weaknesses = weaknesses;
    final lOther$weaknesses = other.weaknesses;
    if (l$weaknesses != null && lOther$weaknesses != null) {
      if (l$weaknesses.length != lOther$weaknesses.length) {
        return false;
      }
      for (int i = 0; i < l$weaknesses.length; i++) {
        final l$weaknesses$entry = l$weaknesses[i];
        final lOther$weaknesses$entry = lOther$weaknesses[i];
        if (l$weaknesses$entry != lOther$weaknesses$entry) {
          return false;
        }
      }
    } else if (l$weaknesses != lOther$weaknesses) {
      return false;
    }
    final l$fleeRate = fleeRate;
    final lOther$fleeRate = other.fleeRate;
    if (l$fleeRate != lOther$fleeRate) {
      return false;
    }
    final l$maxCP = maxCP;
    final lOther$maxCP = other.maxCP;
    if (l$maxCP != lOther$maxCP) {
      return false;
    }
    final l$maxHP = maxHP;
    final lOther$maxHP = other.maxHP;
    if (l$maxHP != lOther$maxHP) {
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

extension UtilityExtension$Query$detail$pokemon on Query$detail$pokemon {
  CopyWith$Query$detail$pokemon<Query$detail$pokemon> get copyWith =>
      CopyWith$Query$detail$pokemon(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$detail$pokemon<TRes> {
  factory CopyWith$Query$detail$pokemon(
    Query$detail$pokemon instance,
    TRes Function(Query$detail$pokemon) then,
  ) = _CopyWithImpl$Query$detail$pokemon;

  factory CopyWith$Query$detail$pokemon.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon;

  TRes call({
    String? id,
    String? number,
    String? name,
    Query$detail$pokemon$weight? weight,
    Query$detail$pokemon$height? height,
    String? classification,
    List<String?>? types,
    List<String?>? resistant,
    Query$detail$pokemon$attacks? attacks,
    List<String?>? weaknesses,
    double? fleeRate,
    int? maxCP,
    int? maxHP,
    String? image,
    String? $__typename,
  });
  CopyWith$Query$detail$pokemon$weight<TRes> get weight;
  CopyWith$Query$detail$pokemon$height<TRes> get height;
  CopyWith$Query$detail$pokemon$attacks<TRes> get attacks;
}

class _CopyWithImpl$Query$detail$pokemon<TRes>
    implements CopyWith$Query$detail$pokemon<TRes> {
  _CopyWithImpl$Query$detail$pokemon(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon _instance;

  final TRes Function(Query$detail$pokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? weight = _undefined,
    Object? height = _undefined,
    Object? classification = _undefined,
    Object? types = _undefined,
    Object? resistant = _undefined,
    Object? attacks = _undefined,
    Object? weaknesses = _undefined,
    Object? fleeRate = _undefined,
    Object? maxCP = _undefined,
    Object? maxHP = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        weight: weight == _undefined
            ? _instance.weight
            : (weight as Query$detail$pokemon$weight?),
        height: height == _undefined
            ? _instance.height
            : (height as Query$detail$pokemon$height?),
        classification: classification == _undefined
            ? _instance.classification
            : (classification as String?),
        types:
            types == _undefined ? _instance.types : (types as List<String?>?),
        resistant: resistant == _undefined
            ? _instance.resistant
            : (resistant as List<String?>?),
        attacks: attacks == _undefined
            ? _instance.attacks
            : (attacks as Query$detail$pokemon$attacks?),
        weaknesses: weaknesses == _undefined
            ? _instance.weaknesses
            : (weaknesses as List<String?>?),
        fleeRate:
            fleeRate == _undefined ? _instance.fleeRate : (fleeRate as double?),
        maxCP: maxCP == _undefined ? _instance.maxCP : (maxCP as int?),
        maxHP: maxHP == _undefined ? _instance.maxHP : (maxHP as int?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$detail$pokemon$weight<TRes> get weight {
    final local$weight = _instance.weight;
    return local$weight == null
        ? CopyWith$Query$detail$pokemon$weight.stub(_then(_instance))
        : CopyWith$Query$detail$pokemon$weight(
            local$weight, (e) => call(weight: e));
  }

  CopyWith$Query$detail$pokemon$height<TRes> get height {
    final local$height = _instance.height;
    return local$height == null
        ? CopyWith$Query$detail$pokemon$height.stub(_then(_instance))
        : CopyWith$Query$detail$pokemon$height(
            local$height, (e) => call(height: e));
  }

  CopyWith$Query$detail$pokemon$attacks<TRes> get attacks {
    final local$attacks = _instance.attacks;
    return local$attacks == null
        ? CopyWith$Query$detail$pokemon$attacks.stub(_then(_instance))
        : CopyWith$Query$detail$pokemon$attacks(
            local$attacks, (e) => call(attacks: e));
  }
}

class _CopyWithStubImpl$Query$detail$pokemon<TRes>
    implements CopyWith$Query$detail$pokemon<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    Query$detail$pokemon$weight? weight,
    Query$detail$pokemon$height? height,
    String? classification,
    List<String?>? types,
    List<String?>? resistant,
    Query$detail$pokemon$attacks? attacks,
    List<String?>? weaknesses,
    double? fleeRate,
    int? maxCP,
    int? maxHP,
    String? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$detail$pokemon$weight<TRes> get weight =>
      CopyWith$Query$detail$pokemon$weight.stub(_res);

  CopyWith$Query$detail$pokemon$height<TRes> get height =>
      CopyWith$Query$detail$pokemon$height.stub(_res);

  CopyWith$Query$detail$pokemon$attacks<TRes> get attacks =>
      CopyWith$Query$detail$pokemon$attacks.stub(_res);
}

class Query$detail$pokemon$weight {
  Query$detail$pokemon$weight({
    this.minimum,
    this.maximum,
    this.$__typename = 'PokemonDimension',
  });

  factory Query$detail$pokemon$weight.fromJson(Map<String, dynamic> json) {
    final l$minimum = json['minimum'];
    final l$maximum = json['maximum'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon$weight(
      minimum: (l$minimum as String?),
      maximum: (l$maximum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? minimum;

  final String? maximum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$minimum = minimum;
    _resultData['minimum'] = l$minimum;
    final l$maximum = maximum;
    _resultData['maximum'] = l$maximum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$minimum = minimum;
    final l$maximum = maximum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$minimum,
      l$maximum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon$weight) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$minimum = minimum;
    final lOther$minimum = other.minimum;
    if (l$minimum != lOther$minimum) {
      return false;
    }
    final l$maximum = maximum;
    final lOther$maximum = other.maximum;
    if (l$maximum != lOther$maximum) {
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

extension UtilityExtension$Query$detail$pokemon$weight
    on Query$detail$pokemon$weight {
  CopyWith$Query$detail$pokemon$weight<Query$detail$pokemon$weight>
      get copyWith => CopyWith$Query$detail$pokemon$weight(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$detail$pokemon$weight<TRes> {
  factory CopyWith$Query$detail$pokemon$weight(
    Query$detail$pokemon$weight instance,
    TRes Function(Query$detail$pokemon$weight) then,
  ) = _CopyWithImpl$Query$detail$pokemon$weight;

  factory CopyWith$Query$detail$pokemon$weight.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon$weight;

  TRes call({
    String? minimum,
    String? maximum,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$detail$pokemon$weight<TRes>
    implements CopyWith$Query$detail$pokemon$weight<TRes> {
  _CopyWithImpl$Query$detail$pokemon$weight(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon$weight _instance;

  final TRes Function(Query$detail$pokemon$weight) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? minimum = _undefined,
    Object? maximum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon$weight(
        minimum:
            minimum == _undefined ? _instance.minimum : (minimum as String?),
        maximum:
            maximum == _undefined ? _instance.maximum : (maximum as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$detail$pokemon$weight<TRes>
    implements CopyWith$Query$detail$pokemon$weight<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon$weight(this._res);

  TRes _res;

  call({
    String? minimum,
    String? maximum,
    String? $__typename,
  }) =>
      _res;
}

class Query$detail$pokemon$height {
  Query$detail$pokemon$height({
    this.minimum,
    this.maximum,
    this.$__typename = 'PokemonDimension',
  });

  factory Query$detail$pokemon$height.fromJson(Map<String, dynamic> json) {
    final l$minimum = json['minimum'];
    final l$maximum = json['maximum'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon$height(
      minimum: (l$minimum as String?),
      maximum: (l$maximum as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? minimum;

  final String? maximum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$minimum = minimum;
    _resultData['minimum'] = l$minimum;
    final l$maximum = maximum;
    _resultData['maximum'] = l$maximum;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$minimum = minimum;
    final l$maximum = maximum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$minimum,
      l$maximum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon$height) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$minimum = minimum;
    final lOther$minimum = other.minimum;
    if (l$minimum != lOther$minimum) {
      return false;
    }
    final l$maximum = maximum;
    final lOther$maximum = other.maximum;
    if (l$maximum != lOther$maximum) {
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

extension UtilityExtension$Query$detail$pokemon$height
    on Query$detail$pokemon$height {
  CopyWith$Query$detail$pokemon$height<Query$detail$pokemon$height>
      get copyWith => CopyWith$Query$detail$pokemon$height(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$detail$pokemon$height<TRes> {
  factory CopyWith$Query$detail$pokemon$height(
    Query$detail$pokemon$height instance,
    TRes Function(Query$detail$pokemon$height) then,
  ) = _CopyWithImpl$Query$detail$pokemon$height;

  factory CopyWith$Query$detail$pokemon$height.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon$height;

  TRes call({
    String? minimum,
    String? maximum,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$detail$pokemon$height<TRes>
    implements CopyWith$Query$detail$pokemon$height<TRes> {
  _CopyWithImpl$Query$detail$pokemon$height(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon$height _instance;

  final TRes Function(Query$detail$pokemon$height) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? minimum = _undefined,
    Object? maximum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon$height(
        minimum:
            minimum == _undefined ? _instance.minimum : (minimum as String?),
        maximum:
            maximum == _undefined ? _instance.maximum : (maximum as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$detail$pokemon$height<TRes>
    implements CopyWith$Query$detail$pokemon$height<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon$height(this._res);

  TRes _res;

  call({
    String? minimum,
    String? maximum,
    String? $__typename,
  }) =>
      _res;
}

class Query$detail$pokemon$attacks {
  Query$detail$pokemon$attacks({
    this.fast,
    this.special,
    this.$__typename = 'PokemonAttack',
  });

  factory Query$detail$pokemon$attacks.fromJson(Map<String, dynamic> json) {
    final l$fast = json['fast'];
    final l$special = json['special'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon$attacks(
      fast: (l$fast as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$detail$pokemon$attacks$fast.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      special: (l$special as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$detail$pokemon$attacks$special.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$detail$pokemon$attacks$fast?>? fast;

  final List<Query$detail$pokemon$attacks$special?>? special;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fast = fast;
    _resultData['fast'] = l$fast?.map((e) => e?.toJson()).toList();
    final l$special = special;
    _resultData['special'] = l$special?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fast = fast;
    final l$special = special;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fast == null ? null : Object.hashAll(l$fast.map((v) => v)),
      l$special == null ? null : Object.hashAll(l$special.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon$attacks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fast = fast;
    final lOther$fast = other.fast;
    if (l$fast != null && lOther$fast != null) {
      if (l$fast.length != lOther$fast.length) {
        return false;
      }
      for (int i = 0; i < l$fast.length; i++) {
        final l$fast$entry = l$fast[i];
        final lOther$fast$entry = lOther$fast[i];
        if (l$fast$entry != lOther$fast$entry) {
          return false;
        }
      }
    } else if (l$fast != lOther$fast) {
      return false;
    }
    final l$special = special;
    final lOther$special = other.special;
    if (l$special != null && lOther$special != null) {
      if (l$special.length != lOther$special.length) {
        return false;
      }
      for (int i = 0; i < l$special.length; i++) {
        final l$special$entry = l$special[i];
        final lOther$special$entry = lOther$special[i];
        if (l$special$entry != lOther$special$entry) {
          return false;
        }
      }
    } else if (l$special != lOther$special) {
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

extension UtilityExtension$Query$detail$pokemon$attacks
    on Query$detail$pokemon$attacks {
  CopyWith$Query$detail$pokemon$attacks<Query$detail$pokemon$attacks>
      get copyWith => CopyWith$Query$detail$pokemon$attacks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$detail$pokemon$attacks<TRes> {
  factory CopyWith$Query$detail$pokemon$attacks(
    Query$detail$pokemon$attacks instance,
    TRes Function(Query$detail$pokemon$attacks) then,
  ) = _CopyWithImpl$Query$detail$pokemon$attacks;

  factory CopyWith$Query$detail$pokemon$attacks.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon$attacks;

  TRes call({
    List<Query$detail$pokemon$attacks$fast?>? fast,
    List<Query$detail$pokemon$attacks$special?>? special,
    String? $__typename,
  });
  TRes fast(
      Iterable<Query$detail$pokemon$attacks$fast?>? Function(
              Iterable<
                  CopyWith$Query$detail$pokemon$attacks$fast<
                      Query$detail$pokemon$attacks$fast>?>?)
          _fn);
  TRes special(
      Iterable<Query$detail$pokemon$attacks$special?>? Function(
              Iterable<
                  CopyWith$Query$detail$pokemon$attacks$special<
                      Query$detail$pokemon$attacks$special>?>?)
          _fn);
}

class _CopyWithImpl$Query$detail$pokemon$attacks<TRes>
    implements CopyWith$Query$detail$pokemon$attacks<TRes> {
  _CopyWithImpl$Query$detail$pokemon$attacks(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon$attacks _instance;

  final TRes Function(Query$detail$pokemon$attacks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fast = _undefined,
    Object? special = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon$attacks(
        fast: fast == _undefined
            ? _instance.fast
            : (fast as List<Query$detail$pokemon$attacks$fast?>?),
        special: special == _undefined
            ? _instance.special
            : (special as List<Query$detail$pokemon$attacks$special?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes fast(
          Iterable<Query$detail$pokemon$attacks$fast?>? Function(
                  Iterable<
                      CopyWith$Query$detail$pokemon$attacks$fast<
                          Query$detail$pokemon$attacks$fast>?>?)
              _fn) =>
      call(
          fast: _fn(_instance.fast?.map((e) => e == null
              ? null
              : CopyWith$Query$detail$pokemon$attacks$fast(
                  e,
                  (i) => i,
                )))?.toList());

  TRes special(
          Iterable<Query$detail$pokemon$attacks$special?>? Function(
                  Iterable<
                      CopyWith$Query$detail$pokemon$attacks$special<
                          Query$detail$pokemon$attacks$special>?>?)
              _fn) =>
      call(
          special: _fn(_instance.special?.map((e) => e == null
              ? null
              : CopyWith$Query$detail$pokemon$attacks$special(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$detail$pokemon$attacks<TRes>
    implements CopyWith$Query$detail$pokemon$attacks<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon$attacks(this._res);

  TRes _res;

  call({
    List<Query$detail$pokemon$attacks$fast?>? fast,
    List<Query$detail$pokemon$attacks$special?>? special,
    String? $__typename,
  }) =>
      _res;

  fast(_fn) => _res;

  special(_fn) => _res;
}

class Query$detail$pokemon$attacks$fast {
  Query$detail$pokemon$attacks$fast({
    this.name,
    this.type,
    this.damage,
    this.$__typename = 'Attack',
  });

  factory Query$detail$pokemon$attacks$fast.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$damage = json['damage'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon$attacks$fast(
      name: (l$name as String?),
      type: (l$type as String?),
      damage: (l$damage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? type;

  final int? damage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$damage = damage;
    _resultData['damage'] = l$damage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$damage = damage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$damage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon$attacks$fast) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$damage = damage;
    final lOther$damage = other.damage;
    if (l$damage != lOther$damage) {
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

extension UtilityExtension$Query$detail$pokemon$attacks$fast
    on Query$detail$pokemon$attacks$fast {
  CopyWith$Query$detail$pokemon$attacks$fast<Query$detail$pokemon$attacks$fast>
      get copyWith => CopyWith$Query$detail$pokemon$attacks$fast(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$detail$pokemon$attacks$fast<TRes> {
  factory CopyWith$Query$detail$pokemon$attacks$fast(
    Query$detail$pokemon$attacks$fast instance,
    TRes Function(Query$detail$pokemon$attacks$fast) then,
  ) = _CopyWithImpl$Query$detail$pokemon$attacks$fast;

  factory CopyWith$Query$detail$pokemon$attacks$fast.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon$attacks$fast;

  TRes call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$detail$pokemon$attacks$fast<TRes>
    implements CopyWith$Query$detail$pokemon$attacks$fast<TRes> {
  _CopyWithImpl$Query$detail$pokemon$attacks$fast(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon$attacks$fast _instance;

  final TRes Function(Query$detail$pokemon$attacks$fast) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? damage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon$attacks$fast(
        name: name == _undefined ? _instance.name : (name as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        damage: damage == _undefined ? _instance.damage : (damage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$detail$pokemon$attacks$fast<TRes>
    implements CopyWith$Query$detail$pokemon$attacks$fast<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon$attacks$fast(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  }) =>
      _res;
}

class Query$detail$pokemon$attacks$special {
  Query$detail$pokemon$attacks$special({
    this.name,
    this.type,
    this.damage,
    this.$__typename = 'Attack',
  });

  factory Query$detail$pokemon$attacks$special.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$damage = json['damage'];
    final l$$__typename = json['__typename'];
    return Query$detail$pokemon$attacks$special(
      name: (l$name as String?),
      type: (l$type as String?),
      damage: (l$damage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? type;

  final int? damage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$damage = damage;
    _resultData['damage'] = l$damage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$damage = damage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$damage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$detail$pokemon$attacks$special) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$damage = damage;
    final lOther$damage = other.damage;
    if (l$damage != lOther$damage) {
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

extension UtilityExtension$Query$detail$pokemon$attacks$special
    on Query$detail$pokemon$attacks$special {
  CopyWith$Query$detail$pokemon$attacks$special<
          Query$detail$pokemon$attacks$special>
      get copyWith => CopyWith$Query$detail$pokemon$attacks$special(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$detail$pokemon$attacks$special<TRes> {
  factory CopyWith$Query$detail$pokemon$attacks$special(
    Query$detail$pokemon$attacks$special instance,
    TRes Function(Query$detail$pokemon$attacks$special) then,
  ) = _CopyWithImpl$Query$detail$pokemon$attacks$special;

  factory CopyWith$Query$detail$pokemon$attacks$special.stub(TRes res) =
      _CopyWithStubImpl$Query$detail$pokemon$attacks$special;

  TRes call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$detail$pokemon$attacks$special<TRes>
    implements CopyWith$Query$detail$pokemon$attacks$special<TRes> {
  _CopyWithImpl$Query$detail$pokemon$attacks$special(
    this._instance,
    this._then,
  );

  final Query$detail$pokemon$attacks$special _instance;

  final TRes Function(Query$detail$pokemon$attacks$special) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? damage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$detail$pokemon$attacks$special(
        name: name == _undefined ? _instance.name : (name as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        damage: damage == _undefined ? _instance.damage : (damage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$detail$pokemon$attacks$special<TRes>
    implements CopyWith$Query$detail$pokemon$attacks$special<TRes> {
  _CopyWithStubImpl$Query$detail$pokemon$attacks$special(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    int? damage,
    String? $__typename,
  }) =>
      _res;
}
