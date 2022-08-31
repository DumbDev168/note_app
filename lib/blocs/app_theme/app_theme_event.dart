part of 'app_theme_bloc.dart';

@freezed
class AppThemeEvent with _$AppThemeEvent {
  const factory AppThemeEvent.themeModeChanged(bool isDark) = ThemeModeChanged;
}
