import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';
part 'app_theme_bloc.freezed.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  AppThemeBloc() : super(const Light()) {
    on<ThemeModeChanged>((event, emit) {
      if (event.isDark) {
        emit(const Light());
      } else {
        emit(const Dark());
      }
    });
  }
}
