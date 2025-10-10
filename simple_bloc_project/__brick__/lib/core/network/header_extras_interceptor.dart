import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@lazySingleton
class HeaderExtrasInterceptor extends Interceptor {
  HeaderExtrasInterceptor(this._packageInfo);

  final PackageInfo _packageInfo;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll({
      'x-app-version': _packageInfo.version,
      'x-build-number': _packageInfo.buildNumber,
      'x-platform': Platform.operatingSystem,
      'x-platform-version': Platform.operatingSystemVersion,
    });
    super.onRequest(options, handler);
  }
}
