import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/shared_pref_constants.dart';

class SharedPreferenceService extends ChangeNotifier {
  static final SharedPreferenceService _instance =
      SharedPreferenceService._internal();
  static SharedPreferences? _sharedPreferences;

  factory SharedPreferenceService() {
    return _instance;
  }

  SharedPreferenceService._internal();

  Future<void> initializeSharedPreferences() async {
    if (_sharedPreferences == null) {
      _sharedPreferences = await SharedPreferences.getInstance();
      _sharedPreferences?.clear();
      notifyListeners();
    }
  }

  void setRefreshToken(String token) {
    _sharedPreferences?.setString(SharedPrefConstants.refreshToken, token);
    notifyListeners();
  }

  String? getRefreshToken() {
    return _sharedPreferences?.getString(SharedPrefConstants.refreshToken);
  }

  // void setLanguageCode(String languageCode) {
  //   _sharedPreferences?.setString(
  //       SharedPrefConstants.languageCode, languageCode);
  //   notifyListeners();
  // }
  //
  // String? getLanguageCode() {
  //   return _sharedPreferences?.getString(SharedPrefConstants.languageCode);
  // }

  void setLocale(String languageCode, String countryCode) {
    _sharedPreferences?.setString(
        SharedPrefConstants.languageCode, languageCode);
    _sharedPreferences?.setString(SharedPrefConstants.countryCode, countryCode);
    notifyListeners();
  }

  Locale getLocale() {
    String? languageCode =
        _sharedPreferences?.getString(SharedPrefConstants.languageCode) ?? 'en';
    String? countryCode =
        _sharedPreferences?.getString(SharedPrefConstants.countryCode) ?? 'US';
    return Locale(languageCode, countryCode);
  }
}
