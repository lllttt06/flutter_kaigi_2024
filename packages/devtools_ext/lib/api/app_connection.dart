import 'package:devtools_extensions/devtools_extensions.dart';

class AppConnection {
  // TODO(KokiYoshida): Flutter のバージョンが上がったら、app に定義されている物を利用
  // devtools_extensions が依存している web のバージョンと packages/app で使用している
  // share_plus が依存している web のバージョンが競合してしまうため、
  // packages/devtools_ext は app に依存できない。従ってここで各 key を定義している。
  static const _cacheApiKey = 'ext.graphql.getCache';
  static const _cacheApiValueKey = 'value';
  static const _fetchDioLoggerApiKey = 'ext.dio.fetchLogger';
  static const _updateDioLoggerApiKey = 'ext.dio.updateLogger';
  static const _dioLoggerApiValueKey = 'enabled';
  static const _fetchLoadingStateApiKey = 'ext.loadingState.fetch';
  static const _updateLoadingStateApiKey = 'ext.loadingState.update';
  static const _loadingStateApiKey = 'loading';

  static Future<Map<String, dynamic>?> fetchCache() async {
    final result =
        await serviceManager.callServiceExtensionOnMainIsolate(_cacheApiKey);
    return result.json?[_cacheApiValueKey] as Map<String, dynamic>?;
  }

  static Future<bool> fetchDioLogger() async {
    final result = await serviceManager
        .callServiceExtensionOnMainIsolate(_fetchDioLoggerApiKey);
    return result.json?[_dioLoggerApiValueKey] as bool;
  }

  static Future<void> updateDioLogger({required bool enabled}) async {
    await serviceManager.callServiceExtensionOnMainIsolate(
      _updateDioLoggerApiKey,
      args: {_dioLoggerApiValueKey: enabled},
    );
  }

  static Future<bool> fetchLoadingState() async {
    final result = await serviceManager
        .callServiceExtensionOnMainIsolate(_fetchLoadingStateApiKey);
    return result.json?[_loadingStateApiKey] as bool;
  }

  static Future<void> updateLoadingState({required bool isLoading}) async {
    await serviceManager.callServiceExtensionOnMainIsolate(
      _updateLoadingStateApiKey,
      args: {_loadingStateApiKey: isLoading},
    );
  }
}
