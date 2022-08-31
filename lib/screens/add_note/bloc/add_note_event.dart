part of 'add_note_bloc.dart';

@freezed
class AddNoteEvent with _$AddNoteEvent {
  const factory AddNoteEvent.create(CreateNoteRequest request) = Create;
  const factory AddNoteEvent.update(
    UpdateNoteRequest request,
    int id,
  ) = Update;
  const factory AddNoteEvent.delete(int id) = Delete;
  const factory AddNoteEvent.setSelectedNote(NoteItem? note) = SetSelectedNote;
}
