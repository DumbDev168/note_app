// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteItem _$$_NoteItemFromJson(Map<String, dynamic> json) => _$_NoteItem(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_NoteItemToJson(_$_NoteItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt,
      'color': instance.color,
    };
