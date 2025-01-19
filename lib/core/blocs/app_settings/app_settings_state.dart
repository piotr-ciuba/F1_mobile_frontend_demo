part of 'app_settings_bloc.dart';

sealed class AppSettingsState extends Equatable {
  const AppSettingsState({
    this.languageCode = 'en',
  });
  final String languageCode;

  @override
  List<Object?> get props => [languageCode];
}

final class AppSettingsInitial extends AppSettingsState {
  const AppSettingsInitial();
}

final class AppSettingsChanged extends AppSettingsState {
  const AppSettingsChanged({required super.languageCode});
}
