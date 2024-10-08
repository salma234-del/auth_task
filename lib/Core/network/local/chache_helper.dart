import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPref;
  static init() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPref.get(key);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPref.setString(key, value);
    if (value is int) return await sharedPref.setInt(key, value);
    if (value is bool) return await sharedPref.setBool(key, value);
    return await sharedPref.setDouble(key, value);
  }

  static Future<bool> removeData({required String key}) async {
    return await sharedPref.remove(key);
  }

  static Future<bool> cleadData() async {
    return await sharedPref.clear();
  }
}
