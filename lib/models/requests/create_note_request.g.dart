// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateNoteRequest _$$_CreateNoteRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateNoteRequest(
      title: json['title'] as String,
      content: json['content'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_CreateNoteRequestToJson(
        _$_CreateNoteRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'color': instance.color,
    };
