part of 'add_note_bloc.dart';

@freezed
class AddNoteState with _$AddNoteState {
  const AddNoteState._();

  factory AddNoteState({
    required DataStatus status,
    required String message,
    NoteItem? note,
  }) = _AddNoteState;

  factory AddNoteState.initial() {
    return AddNoteState(status: DataStatus.initial, message: '', note: null);
  }

  bool get hasNote => note != null;

  bool get isProcessing =>
      status.isDeleting || status.isUpdating || status.isSubmitting;
}
