import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _Kays {
  static const sessionId = 'session_id';
}

class SessionDataProvider {
  final _secureStorage = const FlutterSecureStorage();

  Future<String?> getSessionId() => _secureStorage.read(key: _Kays.sessionId);
  Future<void> setSessionId(String value) =>
      _secureStorage.write(key: _Kays.sessionId, value: value);
}
