import 'dart:convert';
import 'dart:typed_data';

import 'package:injectable/injectable.dart' show LazySingleton;
import 'package:hive/hive.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';

abstract class HiveWrapper {
  Future<Box> openBox(String boxName);
}

@LazySingleton(as: HiveWrapper)
class HiveWrapperImpl implements HiveWrapper {
  HiveWrapperImpl() {
    initHive();
  }

  Future<void> initHive() async {
    final appDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDirectory.path);
  }

  @override
  Future<Box> openBox(String boxName) async {
    final Uint8List encryptionKey = await _getEncryptionKey();
    return Hive.openBox(boxName,
        encryptionCipher: HiveAesCipher(encryptionKey));
  }

  Future<Uint8List> _getEncryptionKey() async {
    FlutterSecureStorage secureStorage = const FlutterSecureStorage();
    final encryptionKey = await secureStorage.read(key: 'secure_key');
    if (encryptionKey == null) {
      await secureStorage.write(
          key: 'secure_key', value: base64UrlEncode(Hive.generateSecureKey()));
    }
    final secureKey = await secureStorage.read(key: 'secure_key') ?? '';
    return base64Url.decode(secureKey);
  }
}
