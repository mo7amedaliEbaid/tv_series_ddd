import 'package:dio/dio.dart';

import '../main_api_config.dart';

class ApiKeyInterceptor extends QueuedInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final apiKey = options.extra[MainApiConfig.apiKeyExtraKey];
    if (apiKey != null) {
      options.queryParameters[MainApiConfig.apiKeyParamKey] = '';
    }
    return handler.next(options);
  }
}
