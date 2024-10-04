import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevToolsExtension(child: const MyDevToolsExtension()));
}

class MyDevToolsExtension extends StatelessWidget {
  const MyDevToolsExtension({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Cache Inspector',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Tab(
                  child: Text(
                    'Feature Toggle',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Expanded(
            child: TabBarView(
              children: [
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
