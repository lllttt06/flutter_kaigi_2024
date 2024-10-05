import 'package:devtools_app_shared/ui.dart';
import 'package:devtools_ext/api/app_connection.dart';
import 'package:devtools_ext/ui/graphql_cache/tree_controller.dart';
import 'package:devtools_ext/ui/graphql_cache/tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef Cache = Map<String, dynamic>;

class CacheInspector extends HookWidget {
  const CacheInspector({super.key});

  static const _queryKey = 'Query';
  static const _mutationKey = 'Mutation';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final response = useFuture(useMemoized(AppConnection.fetchCache));

    final sourceData = useRef<Cache?>(null);

    final cache = useState<Cache?>(null);
    final query = useState<Cache?>(null);
    final mutation = useState<Cache?>(null);

    final q = useRef('');

    final selectedCache = useState<({String key, dynamic value})?>(null);
    final showSearchTab = useState(false);

    final treeController = useTreeController();

    useEffect(
      () {
        if (response.hasData) {
          final cacheMap = response.requireData;
          if (cacheMap is Cache) {
            sourceData.value = Map<String, dynamic>.from(response.requireData!);
            query.value = _sortCache(cacheMap[_queryKey] as Cache?);
            mutation.value = _sortCache(cacheMap[_mutationKey] as Cache?);
            cache.value = _sortCache(
              cacheMap
                ..remove(_queryKey)
                ..remove(_mutationKey),
            );
          }
        }
        return null;
      },
      [response],
    );

    return DefaultTabController(
      length: 3,
      child: SplitPane(
        initialFractions: const [0.5, 0.5],
        axis: Axis.horizontal,
        children: [
          RoundedOutlinedBorder(
            clip: true,
            child: Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Text(
                              'Cache',
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Tab(
                            child: Text(
                              _queryKey,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Tab(
                            child: Text(
                              _mutationKey,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 4,
                      right: 48,
                      child: InkWell(
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.search),
                        ),
                        onTap: () => showSearchTab.value = !showSearchTab.value,
                      ),
                    ),
                    Positioned(
                      top: 4,
                      right: 0,
                      child: InkWell(
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.refresh),
                        ),
                        onTap: () async {
                          q.value = '';
                          selectedCache.value = null;
                          showSearchTab.value = false;

                          final cacheMap = await AppConnection.fetchCache();

                          if (cacheMap is Cache) {
                            sourceData.value = cacheMap;
                            query.value = cacheMap[_queryKey] as Cache;
                            mutation.value = cacheMap[_mutationKey] as Cache;

                            final cacheMapCopy =
                                Map<String, dynamic>.from(cacheMap);
                            cache.value = _sortCache(
                              cacheMapCopy
                                ..remove(_queryKey)
                                ..remove(_mutationKey),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const Divider(height: 1),
                if (showSearchTab.value) ...[
                  const SizedBox(height: 8),
                  TextField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search Cache',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onChanged: (value) {
                      if (sourceData.value == null) return;
                      final cacheCopy =
                          Map<String, dynamic>.from(sourceData.value!);
                      final tmpQuery = cacheCopy[_queryKey] as Cache;
                      final tmpMutation = cacheCopy[_mutationKey] as Cache;

                      query.value = _sortCache(_filterCache(tmpQuery, value));
                      mutation.value =
                          _sortCache(_filterCache(tmpMutation, value));
                      cache.value = _sortCache(
                        _filterCache(
                          cacheCopy
                            ..remove(_queryKey)
                            ..remove(_mutationKey),
                          value,
                        ),
                      );
                      q.value = value;
                    },
                  ),
                ],
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _buildTreeView(
                        context,
                        data: cache.value,
                        onTap: (key, value) {
                          if (key == null) return;
                          selectedCache.value = (key: key, value: value);
                        },
                      ),
                      _buildTreeView(
                        context,
                        data: query.value,
                        onTap: (key, value) {
                          if (key == null) return;
                          selectedCache.value = (key: key, value: value);
                        },
                      ),
                      _buildTreeView(
                        context,
                        data: mutation.value,
                        onTap: (key, value) {
                          if (key == null) return;
                          selectedCache.value = (key: key, value: value);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          RoundedOutlinedBorder(
            clip: true,
            child: SafeArea(
              child: SingleChildScrollView(
                child: TreeView(
                  treeController: treeController,
                  nodes: selectedCache.value == null
                      ? [const TreeNode(children: [])]
                      : _convertToTreeNodes({
                          selectedCache.value!.key:
                              _sortCacheValue(selectedCache.value!.value),
                        }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTreeView(
    BuildContext context, {
    required Cache? data,
    required void Function(String? key, dynamic value) onTap,
  }) {
    return ListView.builder(
      itemCount: data?.length ?? 0,
      itemBuilder: (context, index) {
        final key = data?.keys.elementAt(index);
        return ListTile(
          title: Text('$key: ', style: Theme.of(context).textTheme.titleMedium),
          onTap: () => onTap(key, data?[key]),
        );
      },
    );
  }

  List<TreeNode> _convertToTreeNodes(dynamic parsedJson) {
    if (parsedJson is Cache) {
      return parsedJson.keys
          .map(
            (k) => TreeNode(
              content: '$k:',
              children: _convertToTreeNodes(parsedJson[k]),
            ),
          )
          .toList();
    }
    if (parsedJson is List<dynamic>) {
      if (parsedJson.isEmpty) return [const TreeNode(content: '[]')];
      return parsedJson
          .asMap()
          .map(
            (i, element) => MapEntry(
              i,
              TreeNode(
                content: '[$i]:',
                children: _convertToTreeNodes(element),
              ),
            ),
          )
          .values
          .toList();
    }
    return [TreeNode(content: parsedJson.toString())];
  }

  // キャッシュのキーをアルファベット順にソートする
  Cache _sortCache(Cache? cacheMap) {
    if (cacheMap == null) return {};
    final sortedKeys = cacheMap.keys.toList()..sort((a, b) => a.compareTo(b));
    return {for (final key in sortedKeys) key: cacheMap[key]};
  }

  // キャッシュの value を以下のようにソートする
  // - id
  // - __typename
  // - 値が Map または List でないもの
  // - それ以外
  dynamic _sortCacheValue(dynamic cacheValue) {
    if (cacheValue is! Cache) return cacheValue;
    final sortedKeys = cacheValue.keys.toList()
      ..sort((a, b) {
        if (a == 'id') return -1;
        if (b == 'id') return 1;
        if (a == '__typename') return -1;
        if (b == '__typename') return 1;
        final isAMap = cacheValue[a] is Map || cacheValue[a] is List;
        final isBMap = cacheValue[b] is Map || cacheValue[b] is List;
        if (isAMap && !isBMap) return 1;
        if (!isAMap && isBMap) return -1;
        return a.compareTo(b);
      });
    return {for (final key in sortedKeys) key: cacheValue[key]};
  }

  // キャッシュのキーにクエリを適用してフィルタリングする
  Cache _filterCache(Cache? cacheMap, String q) {
    if (cacheMap == null) return {};
    if (q.isEmpty) return cacheMap;
    return cacheMap.map(
      (k, v) => k.contains(q) ? MapEntry(k, v) : const MapEntry('', null),
    )..removeWhere((key, value) => key.isEmpty);
  }
}

