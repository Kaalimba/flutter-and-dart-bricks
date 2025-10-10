import 'dart:async';

import 'package:{{app_name.snakeCase()}}/core/models/jwt.dart';
import 'package:{{app_name.snakeCase()}}/core/storage/secure_storage_service.dart';
import 'package:{{app_name.snakeCase()}}/core/storage/storage_key.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppTokenStorage extends TokenStorage<Jwt> {
  AppTokenStorage(this._secureStorageService);

  final SecureStorageService _secureStorageService;

  @override
  Future<Jwt?> read() async {
    Jwt? jwt;
    final stringJwt = await _secureStorageService.read(AppStorageKey.jwt);
    if (stringJwt != null) {
      jwt = Jwt.fromJsonString(stringJwt);
    }
    return jwt;
  }

  @override
  Future<void> write(Jwt token) {
    return _secureStorageService.write(
      AppStorageKey.jwt,
      token.toJsonString(),
    );
  }

  @override
  Future<void> delete() {
    return _secureStorageService.delete(AppStorageKey.jwt);
  }
}
