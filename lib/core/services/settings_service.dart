import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SettingsService {
  SettingsService(
    this.prefs,
  );

  static const _languageKey = 'language_code';
  final SharedPreferences prefs;

  Future<String?> getLanguageCode() async {
    return prefs.getString(_languageKey);
  }

  Future<void> setLanguageCode(String languageCode) async {
    await prefs.setString(_languageKey, languageCode);
  }
}
