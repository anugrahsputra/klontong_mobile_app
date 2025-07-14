import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class TokenManager {
  Future<void> saveToken(String token);

  Future<String?> getToken();

  Future<void> deleteToken();
}

class TokenManagerImpl extends TokenManager {
  final FlutterSecureStorage storage;

  TokenManagerImpl(this.storage);

  @override
  Future<String?> getToken() async {
    return await storage.read(key: 'token', aOptions: _androidOptions(), iOptions: _iosOptions());
  }

  @override
  Future<void> saveToken(String token) async {
    await storage.write(
      key: 'token',
      value: token,
      aOptions: _androidOptions(),
      iOptions: _iosOptions(),
    );
  }

  @override
  Future<void> deleteToken() async {
    await storage.delete(key: 'token', aOptions: _androidOptions(), iOptions: _iosOptions());
  }

  AndroidOptions _androidOptions() => const AndroidOptions(encryptedSharedPreferences: true);

  IOSOptions _iosOptions() => const IOSOptions(accessibility: KeychainAccessibility.first_unlock);
}