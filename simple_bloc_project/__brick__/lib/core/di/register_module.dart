import 'package:{{app_name.snakeCase()}}/core/env.dart';
import 'package:{{app_name.snakeCase()}}/core/network/header_extras_interceptor.dart';
import 'package:{{app_name.snakeCase()}}/core/network/token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@module
abstract class RegisterModule {
  @singleton
  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @lazySingleton
  Dio dio(
    TokenInterceptor tokenInterceptor,
    HeaderExtrasInterceptor headerExtrasInterceptor,
  ) {
    const defaultTimeout = Duration(seconds: 30);
    return Dio(
        BaseOptions(
          // This value is set from env file using --dart-define-from-file
          // ignore: avoid_redundant_argument_values
          baseUrl: apiBaseUrl,
          connectTimeout: defaultTimeout,
          receiveTimeout: defaultTimeout,
          sendTimeout: defaultTimeout,
        ),
      )
      ..interceptors.addAll([
        headerExtrasInterceptor,
        tokenInterceptor,
      ]);
  }

  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage {
    const secureStorageName = '_secure_storage';
    return const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: secureStorageName,
      ),
      iOptions: IOSOptions(
        accountName: secureStorageName,
      ),
    );
  }
}
