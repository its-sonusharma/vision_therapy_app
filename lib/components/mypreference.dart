import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  MySharedPreferences._privateConstructor();

  static final MySharedPreferences instance =
  MySharedPreferences._privateConstructor();

  setStringValue(String key, String value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }
  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? "";
  }
  getAll() async{
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getKeys();
  }
}