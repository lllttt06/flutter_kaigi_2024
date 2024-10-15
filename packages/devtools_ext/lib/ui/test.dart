import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OutlinedButton(
          onPressed: () {
            extensionManager.showBannerMessage(
              key: 'testkey',
              type: 'warning',
              message: 'test',
              extensionName: 'flutterkaigi',
              ignoreIfAlreadyDismissed: false,
            );
          },
          child: Text('showBannerMessage'),
        ),
        const Gap(12),
        OutlinedButton(
          onPressed: () {
            extensionManager.showNotification('message');
          },
          child: Text('showNotification'),
        ),
        const Gap(12),
        OutlinedButton(
          onPressed: () {},
          child: Text('showNotification'),
        ),
        const Gap(12),
        OutlinedButton(
          onPressed: () {
            extensionManager.showNotification('message');
          },
          child: Text('showNotification'),
        ),
        const Gap(12),
        OutlinedButton(
          onPressed: () {
            serviceManager.performHotReload();
          },
          child: Text('hotReload'),
        ),
        const Gap(12),
        OutlinedButton(
          onPressed: () {
            serviceManager.performHotRestart();
          },
          child: Text('hotReStart'),
        ),
      ],
    );
  }
}
