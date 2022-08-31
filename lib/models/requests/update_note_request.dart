import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

import 'package:note_app/utils/utils.dart';

part 'update_note_request.freezed.dart';
part 'update_note_request.g.dart';

@freezed
class UpdateNoteRequest with _$UpdateNoteRequest {
  factory UpdateNoteRequest({
    String? title,
    String? content,
    String? color,
  }) = _UpdateNoteRequest;

  factory UpdateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoteRequestFromJson(json);

  factory UpdateNoteRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};

    data['color'] = (data['color'] as Color).toHex();

    return UpdateNoteRequest.fromJson(data);
  }
}
