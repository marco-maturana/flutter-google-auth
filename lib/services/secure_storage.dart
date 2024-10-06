import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  late final FlutterSecureStorage _storage;
  static SecureStorage? _instance;

  SecureStorage._internal() {
    _storage = const FlutterSecureStorage();
  }

  static SecureStorage getInstance() {
    _instance ??= SecureStorage._internal();
    return _instance!;
  }

  Future<String?> getJwtToken() async => await _storage.read(key: 'jwt-token');
  Future<void> setJwtToken(String value) async =>
      await _storage.write(key: 'jwt-token', value: value);
}
