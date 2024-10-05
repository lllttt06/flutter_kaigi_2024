import 'package:devtools_ext/ui/graphql_cache/tree_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Tree view with collapsible and expandable nodes.
class TreeView extends HookWidget {
  TreeView({
    required List<TreeNode> nodes,
    required this.treeController,
    super.key,
    this.indent = 32,
    this.iconSize,
  }) : nodes = _copyNodesRecursively(nodes, _KeyProvider())!;

  /// List of root level tree nodes.
  final List<TreeNode> nodes;

  /// Horizontal indent between levels.
  final double? indent;

  /// Size of the expand/collapse icon.
  final double? iconSize;

  /// Tree controller to manage the tree state.
  final TreeController treeController;

  @override
  Widget build(BuildContext context) {
    return _buildNodes(nodes, indent, treeController, iconSize);
  }
}

/// Widget that displays one [TreeNode] and its children.
class NodeWidget extends HookWidget {
  const NodeWidget({
    required this.treeNode,
    required this.treeController,
    super.key,
    this.indent,
    this.iconSize,
  });

  final TreeNode treeNode;
  final double? indent;
  final double? iconSize;
  final TreeController treeController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isExpanded = useState(treeController.isNodeExpanded(treeNode.key!));

    final isLeaf = treeNode.children?.length == 1 &&
        treeNode.children!.first.children == null;

    if (isLeaf) {
      return ListTile(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '${treeNode.content} ',
                style: theme.textTheme.titleMedium,
              ),
              TextSpan(
                text: treeNode.children!.first.content,
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.colorScheme.primary),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              treeController.toggleNodeExpanded(treeNode.key!);
              isExpanded.value = treeController.isNodeExpanded(treeNode.key!);
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    isExpanded.value ? Icons.expand_more : Icons.chevron_right,
                    size: iconSize,
                  ),
                ),
                Expanded(
                  child: Text(
                    treeNode.content,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded.value)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: indent! + 8.0),
                  child: _buildNodes(
                    treeNode.children!,
                    indent,
                    treeController,
                    iconSize,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class _TreeNodeKey extends ValueKey<int> {
  const _TreeNodeKey(super.value);
}

/// Provides unique keys and verifies duplicates.
class _KeyProvider {
  int _nextIndex = 0;
  final Set<Key> _keys = <Key>{};

  /// If [originalKey] is null, generates new key, otherwise verifies the key
  /// was not met before.
  Key key(Key? originalKey) {
    if (originalKey == null) {
      return _TreeNodeKey(_nextIndex++);
    }
    if (_keys.contains(originalKey)) {
      throw ArgumentError('There should not be nodes with the same kays. '
          'Duplicate value found: $originalKey.');
    }
    _keys.add(originalKey);
    return originalKey;
  }
}

/// One node of a tree.
class TreeNode {
  const TreeNode({this.children, this.content = '', this.key});

  final List<TreeNode>? children;
  final String content;
  final Key? key;
}

/// Builds set of [nodes] respecting [state], [indent] and [iconSize].
Widget _buildNodes(
  Iterable<TreeNode> nodes,
  double? indent,
  TreeController state,
  double? iconSize,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      for (final node in nodes)
        NodeWidget(
          treeNode: node,
          indent: indent,
          treeController: state,
          iconSize: iconSize,
        ),
    ],
  );
}

List<TreeNode>? _copyNodesRecursively(
  List<TreeNode>? nodes,
  _KeyProvider keyProvider,
) {
  if (nodes == null) {
    return null;
  }
  return List.unmodifiable(
    nodes.map(
      (n) {
        return TreeNode(
          key: keyProvider.key(n.key),
          content: n.content,
          children: _copyNodesRecursively(n.children, keyProvider),
        );
      },
    ),
  );
}
