import 'package:{{app_name.snakeCase()}}/core/storage/storage_key.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SecureStorageService {
  const SecureStorageService({
    required FlutterSecureStorage flutterSecureStorage,
  }) : _flutterSecureStorage = flutterSecureStorage;

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> read(AppStorageKey key) {
    return _flutterSecureStorage.read(key: key.name);
  }

  Future<void> write(AppStorageKey key, String value) {
    return _flutterSecureStorage.write(key: key.name, value: value);
  }

  Future<void> delete(AppStorageKey key) {
    return _flutterSecureStorage.delete(key: key.name);
  }

  Future<void> deleteAll() {
    return _flutterSecureStorage.deleteAll();
  }
}
