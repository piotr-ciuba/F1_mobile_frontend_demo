import 'package:equatable/equatable.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/settings_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_settings_event.dart';
part 'app_settings_state.dart';

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc(this._repository) : super(const AppSettingsInitial()) {
    on<ChangeLanguageEvent>(_onChangeLanguage);

    _loadSettings();
  }

  final SettingsRepository _repository;

  Future<void> _onChangeLanguage(
    ChangeLanguageEvent event,
    Emitter<AppSettingsState> emit,
  ) async {
    emit(AppSettingsChanged(languageCode: event.languageCode));
    await _repository.saveLanguageCode(event.languageCode);
  }

  Future<void> _loadSettings() async {
    final languageCode = await _repository.loadLanguageCode();
    add(ChangeLanguageEvent(languageCode));
  }
}
