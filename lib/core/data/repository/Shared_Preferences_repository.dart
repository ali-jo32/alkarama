import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:e_commerce/core/data/models/token_info.dart';
import 'package:e_commerce/main.dart';

enum DataType {
  INT,
  STRING,
  BOOL,
  DOUBLE,
  LISTSTRING,
}

class SharedPrefrenceRepository {
  SharedPreferences pref = Get.find<SharedPreferences>();

  //!---- Keys  ------

  String PREF_FIRST_LUNCH = 'first_lunch';
  String PREF_IS_LOGGED = 'logged_in';
  String PREF_LOGIN_INFO = 'login_info';
  String PREF_TOKEN_INFO = 'token_info';
  String PREF_APP_LANG = 'app_language';

  void setLoggedIn(bool value) {
    setPrefrenc(type: DataType.BOOL, key: PREF_IS_LOGGED, value: value);
  }

  bool getLoggedIn() {
    if (pref.containsKey(PREF_IS_LOGGED))
      return getPrefrence(PREF_IS_LOGGED);
    else
      return false;
  }

  void setFirstLunch(bool value) {
    setPrefrenc(type: DataType.BOOL, key: PREF_FIRST_LUNCH, value: value);
  }

  bool getFirstLunch() {
    if (pref.containsKey(PREF_FIRST_LUNCH))
      return getPrefrence(PREF_FIRST_LUNCH);
    else
      return true;
  }

  List<String> getLoginInfo() {
    if (pref.containsKey(PREF_LOGIN_INFO)) {
      List<Object?> result = getPrefrence(PREF_LOGIN_INFO);
      List<String> info = [];

      result.forEach((element) {
        info.add(element.toString());
      });

      return info;
    } else
      return [];
  }

  void setLoginInfo(List<String> value) {
    setPrefrenc(type: DataType.LISTSTRING, key: PREF_LOGIN_INFO, value: value);
  }

  void setTokenInfo(TokenInfo token) {
    //! Map<String, dynamic> map = token.toJson();
    //! String strToken = jsonEncode(map);

    setPrefrenc(
        type: DataType.STRING,
        key: PREF_TOKEN_INFO,
        value: jsonEncode(token.toJson()));
  }

  TokenInfo getTokenInfo() {
    //! String strToken = getPrefrence(PREF_TOKEN_INFO);
    //! Map<String, dynamic> map = jsonDecode(strToken);
    return TokenInfo.fromJson(jsonDecode(getPrefrence(PREF_TOKEN_INFO)));
  }

  void setAppLanguage(String code) {
    setPrefrenc(type: DataType.STRING, key: PREF_APP_LANG, value: code);
  }

  String getAppLanguage() {
    if (pref.containsKey(PREF_APP_LANG)) {
      return getPrefrence(PREF_APP_LANG);
    } else {
      return 'ar';
    }
  }

  //*====================================

  void setPrefrenc({
    required DataType type,
    required String key,
    required dynamic value,
  }) async {
    switch (type) {
      case DataType.INT:
        await pref.setInt(key, value);
        break;
      case DataType.STRING:
        await pref.setString(key, value);
        break;
      case DataType.BOOL:
        await pref.setBool(key, value);
        break;
      case DataType.DOUBLE:
        await pref.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await pref.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrence(String key) {
    return pref.get(key);
  }
}
