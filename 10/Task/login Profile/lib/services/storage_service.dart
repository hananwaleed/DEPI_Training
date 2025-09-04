import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _keyEmail = "email";
  static const String _keyUsername = "username";


  Future<void> saveData({required String email, required String username}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyEmail, email);
    await prefs.setString(_keyUsername, username);
  }


  Future<Map<String, String>> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      "email": prefs.getString(_keyEmail) ?? "",
      "username": prefs.getString(_keyUsername) ?? "",
    };
  }
}
