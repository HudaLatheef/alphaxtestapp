import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

AndroidOptions _getAndroidOptions() => const AndroidOptions(encryptedSharedPreferences: true);
final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

class CredentialManager {
  final key = encrypt.Key.fromUtf8("1245714587458888"); //hardcode combination of 16 character
  final iv = encrypt.IV.fromUtf8("1245714587458888");
  final encrypter = encrypt.Encrypter(encrypt.AES(encrypt.Key.fromUtf8("1245714587458888"), mode: encrypt.AESMode.cbc));

  static Future<List<String>> loadCredentials() async {
    Map<String, String> allCredentials = await storage.readAll();
    print(allCredentials.toString());
    return allCredentials.keys.toList();
  }

  static deletecredentials() async {
    await storage.deleteAll();
  }

  static deletecredential(String username) async {
    await storage.delete(key: username);
    loadCredentials();
  }

  Future<void> decryptPassword(String username, Function(String) onPasswordDecrypted) async {
    String? encryptedPassword = await storage.read(key: username);
    // Decrypt the password using the generated encryption key

    final decrypted = encrypter.decrypt(encrypt.Encrypted.from64(encryptedPassword ?? ''), iv: iv);
    onPasswordDecrypted(decrypted);
  }

  Future<void> saveCredentials(String username, String password, Function() onCredentialsSaved) async {
    Map<String, String> allCredentials = await storage.readAll();

    if (!allCredentials.containsKey(username)) {
      print('encrypted credentials saving to local store');
      // Encrypt the password using the generated encryption key

      final encryptedPassword = encrypter.encrypt(password, iv: iv);

      await storage.write(key: username, value: encryptedPassword.base64, aOptions: _getAndroidOptions());
      onCredentialsSaved();
    } else {}
  }
}
