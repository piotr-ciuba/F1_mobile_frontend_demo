import 'package:f1_mobile_frontend_demo/core/services/settings_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class SettingsRepository {
  final SettingsService _settingsService;

  SettingsRepository(this._settingsService);

  Future<String> loadLanguageCode() async {
    return await _settingsService.getLanguageCode() ?? 'en';
  }

  Future<void> saveLanguageCode(String languageCode) async {
    await _settingsService.setLanguageCode(languageCode);
  }
}
