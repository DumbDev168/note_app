// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteItem _$NoteItemFromJson(Map<String, dynamic> json) {
  return _NoteItem.fromJson(json);
}

/// @nodoc
mixin _$NoteItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteItemCopyWith<NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemCopyWith<$Res> {
  factory $NoteItemCopyWith(NoteItem value, $Res Function(NoteItem) then) =
      _$NoteItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String content,
      @JsonKey(name: "created_at") String createdAt,
      String color});
}

/// @nodoc
class _$NoteItemCopyWithImpl<$Res> implements $NoteItemCopyWith<$Res> {
  _$NoteItemCopyWithImpl(this._value, this._then);

  final NoteItem _value;
  // ignore: unused_field
  final $Res Function(NoteItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NoteItemCopyWith<$Res> implements $NoteItemCopyWith<$Res> {
  factory _$$_NoteItemCopyWith(
          _$_NoteItem value, $Res Function(_$_NoteItem) then) =
      __$$_NoteItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String content,
      @JsonKey(name: "created_at") String createdAt,
      String color});
}

/// @nodoc
class __$$_NoteItemCopyWithImpl<$Res> extends _$NoteItemCopyWithImpl<$Res>
    implements _$$_NoteItemCopyWith<$Res> {
  __$$_NoteItemCopyWithImpl(
      _$_NoteItem _value, $Res Function(_$_NoteItem) _then)
      : super(_value, (v) => _then(v as _$_NoteItem));

  @override
  _$_NoteItem get _value => super._value as _$_NoteItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_NoteItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteItem implements _NoteItem {
  _$_NoteItem(
      {required this.id,
      required this.title,
      required this.content,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.color});

  factory _$_NoteItem.fromJson(Map<String, dynamic> json) =>
      _$$_NoteItemFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  final String color;

  @override
  String toString() {
    return 'NoteItem(id: $id, title: $title, content: $content, createdAt: $createdAt, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_NoteItemCopyWith<_$_NoteItem> get copyWith =>
      __$$_NoteItemCopyWithImpl<_$_NoteItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteItemToJson(
      this,
    );
  }
}

abstract class _NoteItem implements NoteItem {
  factory _NoteItem(
      {required final int id,
      required final String title,
      required final String content,
      @JsonKey(name: "created_at") required final String createdAt,
      required final String color}) = _$_NoteItem;

  factory _NoteItem.fromJson(Map<String, dynamic> json) = _$_NoteItem.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_NoteItemCopyWith<_$_NoteItem> get copyWith =>
      throw _privateConstructorUsedError;
}
