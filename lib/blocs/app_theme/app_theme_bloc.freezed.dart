// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppThemeEvent {
  bool get isDark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) themeModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isDark)? themeModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? themeModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeModeChanged value) themeModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeModeChanged value)? themeModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeModeChanged value)? themeModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeEventCopyWith<AppThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeEventCopyWith<$Res> {
  factory $AppThemeEventCopyWith(
          AppThemeEvent value, $Res Function(AppThemeEvent) then) =
      _$AppThemeEventCopyWithImpl<$Res>;
  $Res call({bool isDark});
}

/// @nodoc
class _$AppThemeEventCopyWithImpl<$Res>
    implements $AppThemeEventCopyWith<$Res> {
  _$AppThemeEventCopyWithImpl(this._value, this._then);

  final AppThemeEvent _value;
  // ignore: unused_field
  final $Res Function(AppThemeEvent) _then;

  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_value.copyWith(
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$ThemeModeChangedCopyWith<$Res>
    implements $AppThemeEventCopyWith<$Res> {
  factory _$$ThemeModeChangedCopyWith(
          _$ThemeModeChanged value, $Res Function(_$ThemeModeChanged) then) =
      __$$ThemeModeChangedCopyWithImpl<$Res>;
  @override
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeModeChangedCopyWithImpl<$Res>
    extends _$AppThemeEventCopyWithImpl<$Res>
    implements _$$ThemeModeChangedCopyWith<$Res> {
  __$$ThemeModeChangedCopyWithImpl(
      _$ThemeModeChanged _value, $Res Function(_$ThemeModeChanged) _then)
      : super(_value, (v) => _then(v as _$ThemeModeChanged));

  @override
  _$ThemeModeChanged get _value => super._value as _$ThemeModeChanged;

  @override
  $Res call({
    Object? isDark = freezed,
  }) {
    return _then(_$ThemeModeChanged(
      isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeModeChanged
    with DiagnosticableTreeMixin
    implements ThemeModeChanged {
  const _$ThemeModeChanged(this.isDark);

  @override
  final bool isDark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppThemeEvent.themeModeChanged(isDark: $isDark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppThemeEvent.themeModeChanged'))
      ..add(DiagnosticsProperty('isDark', isDark));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModeChanged &&
            const DeepCollectionEquality().equals(other.isDark, isDark));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isDark));

  @JsonKey(ignore: true)
  @override
  _$$ThemeModeChangedCopyWith<_$ThemeModeChanged> get copyWith =>
      __$$ThemeModeChangedCopyWithImpl<_$ThemeModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) themeModeChanged,
  }) {
    return themeModeChanged(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isDark)? themeModeChanged,
  }) {
    return themeModeChanged?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? themeModeChanged,
    required TResult orElse(),
  }) {
    if (themeModeChanged != null) {
      return themeModeChanged(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeModeChanged value) themeModeChanged,
  }) {
    return themeModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeModeChanged value)? themeModeChanged,
  }) {
    return themeModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeModeChanged value)? themeModeChanged,
    required TResult orElse(),
  }) {
    if (themeModeChanged != null) {
      return themeModeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeModeChanged implements AppThemeEvent {
  const factory ThemeModeChanged(final bool isDark) = _$ThemeModeChanged;

  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$ThemeModeChangedCopyWith<_$ThemeModeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Light value) light,
    required TResult Function(Dark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeStateCopyWith<$Res> {
  factory $AppThemeStateCopyWith(
          AppThemeState value, $Res Function(AppThemeState) then) =
      _$AppThemeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeStateCopyWithImpl<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  _$AppThemeStateCopyWithImpl(this._value, this._then);

  final AppThemeState _value;
  // ignore: unused_field
  final $Res Function(AppThemeState) _then;
}

/// @nodoc
abstract class _$$LightCopyWith<$Res> {
  factory _$$LightCopyWith(_$Light value, $Res Function(_$Light) then) =
      __$$LightCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LightCopyWithImpl<$Res> extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$LightCopyWith<$Res> {
  __$$LightCopyWithImpl(_$Light _value, $Res Function(_$Light) _then)
      : super(_value, (v) => _then(v as _$Light));

  @override
  _$Light get _value => super._value as _$Light;
}

/// @nodoc

class _$Light with DiagnosticableTreeMixin implements Light {
  const _$Light();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppThemeState.light()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppThemeState.light'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Light);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Light value) light,
    required TResult Function(Dark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class Light implements AppThemeState {
  const factory Light() = _$Light;
}

/// @nodoc
abstract class _$$DarkCopyWith<$Res> {
  factory _$$DarkCopyWith(_$Dark value, $Res Function(_$Dark) then) =
      __$$DarkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DarkCopyWithImpl<$Res> extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$DarkCopyWith<$Res> {
  __$$DarkCopyWithImpl(_$Dark _value, $Res Function(_$Dark) _then)
      : super(_value, (v) => _then(v as _$Dark));

  @override
  _$Dark get _value => super._value as _$Dark;
}

/// @nodoc

class _$Dark with DiagnosticableTreeMixin implements Dark {
  const _$Dark();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppThemeState.dark()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppThemeState.dark'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Dark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Light value) light,
    required TResult Function(Dark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Light value)? light,
    TResult Function(Dark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class Dark implements AppThemeState {
  const factory Dark() = _$Dark;
}
