import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteItem with _$NoteItem {
  factory NoteItem({
    required int id,
    required String title,
    required String content,
    @JsonKey(name: "created_at") required String createdAt,
    required String color,
  }) = _NoteItem;

  factory NoteItem.fromJson(Map<String, dynamic> json) =>
      _$NoteItemFromJson(json);
}
