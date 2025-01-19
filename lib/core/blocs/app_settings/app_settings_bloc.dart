import 'package:equatable/equatable.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/settings_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_settings_event.dart';
part 'app_settings_state.dart';

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc({
    required this.settingsRepository,
  }) : super(const AppSettingsInitial()) {
    on<ChangeLanguageEvent>(_onChangeLanguage);

    _loadSettings();
  }

  final SettingsRepository settingsRepository;

  Future<void> _onChangeLanguage(
    ChangeLanguageEvent event,
    Emitter<AppSettingsState> emit,
  ) async {
    emit(AppSettingsChanged(languageCode: event.languageCode));
    await settingsRepository.saveLanguageCode(event.languageCode);
  }

  Future<void> _loadSettings() async {
    final languageCode = await settingsRepository.loadLanguageCode();
    add(ChangeLanguageEvent(languageCode));
  }
}
