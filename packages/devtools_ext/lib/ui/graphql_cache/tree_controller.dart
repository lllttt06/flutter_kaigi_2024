import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A controller for a tree state.
///
/// Allows to modify the state of the tree.
class TreeController {
  TreeController({bool allNodesExpanded = true})
      : _allNodesExpanded = allNodesExpanded;
  bool _allNodesExpanded;
  final Map<Key, bool> _expanded = <Key, bool>{};

  bool get allNodesExpanded => _allNodesExpanded;

  bool isNodeExpanded(Key key) {
    return _expanded[key] ?? _allNodesExpanded;
  }

  void toggleNodeExpanded(Key key) {
    _expanded[key] = !isNodeExpanded(key);
  }

  void expandAll() {
    _allNodesExpanded = true;
    _expanded.clear();
  }

  void collapseAll() {
    _allNodesExpanded = false;
    _expanded.clear();
  }

  void expandNode(Key key) {
    _expanded[key] = true;
  }

  void collapseNode(Key key) {
    _expanded[key] = false;
  }
}

TreeController useTreeController({bool allNodesExpanded = true}) {
  return use(TreeControllerHook(allNodesExpanded: allNodesExpanded));
}

class TreeControllerHook extends Hook<TreeController> {
  const TreeControllerHook({
    required this.allNodesExpanded,
  });

  final bool allNodesExpanded;

  @override
  HookState<TreeController, Hook<TreeController>> createState() =>
      TreeControllerHookState();
}

class TreeControllerHookState
    extends HookState<TreeController, TreeControllerHook> {
  late final TreeController _controller =
      TreeController(allNodesExpanded: hook.allNodesExpanded);

  @override
  TreeController build(BuildContext context) => _controller;

  @override
  void dispose() {}
}
