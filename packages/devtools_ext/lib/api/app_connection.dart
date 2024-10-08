import 'package:app/component/devtools_ext_container.dart';
import 'package:devtools_extensions/devtools_extensions.dart';

class AppConnection {
  static Future<Map<String, dynamic>?> fetchCache() async {
    final result = await serviceManager
        .callServiceExtensionOnMainIsolate(DevToolsExtKey.cacheExtKey);
    return result.json?[DevToolsExtKey.cacheExtResultKey]
        as Map<String, dynamic>?;
  }

  static Future<bool> fetchDioLogger() async {
    final result = await serviceManager
        .callServiceExtensionOnMainIsolate(DevToolsExtKey.fetchDioLoggerExtKey);
    return result.json?[DevToolsExtKey.dioLoggerExtValueKey] as bool;
  }

  static Future<void> updateDioLogger({required bool enabled}) async {
    await serviceManager.callServiceExtensionOnMainIsolate(
      DevToolsExtKey.updateDioLoggerExtKey,
      args: {DevToolsExtKey.dioLoggerExtValueKey: enabled},
    );
    extensionManager.showBannerMessage(
      key: 'testkey',
      type: 'warning',
      message: 'test',
      extensionName: 'flutterkaigi',
    );
  }

  static Future<bool> fetchLoadingState() async {
    final result = await serviceManager.callServiceExtensionOnMainIsolate(
        DevToolsExtKey.fetchLoadingStateExtKey);
    return result.json?[DevToolsExtKey.loadingStateExtValueKey] as bool;
  }

  static Future<void> updateLoadingState({required bool isLoading}) async {
    await serviceManager.callServiceExtensionOnMainIsolate(
      DevToolsExtKey.updateLoadingStateExtKey,
      args: {DevToolsExtKey.loadingStateExtValueKey: isLoading},
    );
  }
}
