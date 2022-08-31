// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateNoteRequest _$UpdateNoteRequestFromJson(Map<String, dynamic> json) {
  return _UpdateNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateNoteRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateNoteRequestCopyWith<UpdateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNoteRequestCopyWith<$Res> {
  factory $UpdateNoteRequestCopyWith(
          UpdateNoteRequest value, $Res Function(UpdateNoteRequest) then) =
      _$UpdateNoteRequestCopyWithImpl<$Res>;
  $Res call({String? title, String? content, String? color});
}

/// @nodoc
class _$UpdateNoteRequestCopyWithImpl<$Res>
    implements $UpdateNoteRequestCopyWith<$Res> {
  _$UpdateNoteRequestCopyWithImpl(this._value, this._then);

  final UpdateNoteRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateNoteRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateNoteRequestCopyWith<$Res>
    implements $UpdateNoteRequestCopyWith<$Res> {
  factory _$$_UpdateNoteRequestCopyWith(_$_UpdateNoteRequest value,
          $Res Function(_$_UpdateNoteRequest) then) =
      __$$_UpdateNoteRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? content, String? color});
}

/// @nodoc
class __$$_UpdateNoteRequestCopyWithImpl<$Res>
    extends _$UpdateNoteRequestCopyWithImpl<$Res>
    implements _$$_UpdateNoteRequestCopyWith<$Res> {
  __$$_UpdateNoteRequestCopyWithImpl(
      _$_UpdateNoteRequest _value, $Res Function(_$_UpdateNoteRequest) _then)
      : super(_value, (v) => _then(v as _$_UpdateNoteRequest));

  @override
  _$_UpdateNoteRequest get _value => super._value as _$_UpdateNoteRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_UpdateNoteRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateNoteRequest implements _UpdateNoteRequest {
  _$_UpdateNoteRequest({this.title, this.content, this.color});

  factory _$_UpdateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateNoteRequestFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? color;

  @override
  String toString() {
    return 'UpdateNoteRequest(title: $title, content: $content, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateNoteRequest &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNoteRequestCopyWith<_$_UpdateNoteRequest> get copyWith =>
      __$$_UpdateNoteRequestCopyWithImpl<_$_UpdateNoteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateNoteRequestToJson(
      this,
    );
  }
}

abstract class _UpdateNoteRequest implements UpdateNoteRequest {
  factory _UpdateNoteRequest(
      {final String? title,
      final String? content,
      final String? color}) = _$_UpdateNoteRequest;

  factory _UpdateNoteRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateNoteRequest.fromJson;

  @override
  String? get title;
  @override
  String? get content;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateNoteRequestCopyWith<_$_UpdateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
