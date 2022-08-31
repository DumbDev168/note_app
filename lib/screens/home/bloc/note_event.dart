part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.toggleViewType() = ToggleViewType;
  const factory NoteEvent.started() = Started;
  const factory NoteEvent.refresh() = Refresh;
  const factory NoteEvent.loadMore() = LoadMore;
  const factory NoteEvent.delete(int id) = Delete;
  const factory NoteEvent.filterNotes(FilterDataType type, dynamic data) =
      FilterNote;
}
