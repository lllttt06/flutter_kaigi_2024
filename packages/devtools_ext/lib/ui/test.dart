import 'package:devtools_extensions/devtools_extensions.dart';
import 'package:flutter/material.dart';

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
        OutlinedButton(
          onPressed: () {
            extensionManager.showNotification('message');
          },
          child: Text('showNotification'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('showNotification'),
        ),
        OutlinedButton(
          onPressed: () {
            extensionManager.showNotification('message');
          },
          child: Text('showNotification'),
        ),
      ],
    );
  }
}
