import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  SharedPreferences? prefs;

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  set({required String key, required String value}) {
    prefs?.setString("token", value);
  }

  get({required String key}) {
    return prefs?.getString("token");
  }
}
