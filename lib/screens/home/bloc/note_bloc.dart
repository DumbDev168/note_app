import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app/enums/enums.dart';
import 'package:note_app/models/models.dart';
import 'package:note_app/repositories/repositories.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository _noteRepository;

  NoteBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(NoteState.initial()) {
    on<ToggleViewType>((event, emit) {
      emit(state.copyWith(
        viewType: state.viewType.isGrid ? NoteViewType.list : NoteViewType.grid,
      ));
    });
    on<Started>((event, emit) async {
      if (state.status.isLoading) return;

      emit(state.copyWith(status: DataStatus.loading));

      await _getFirstPage(emit);
    });
    on<Delete>((event, emit) {
      _noteRepository.deleteSingle(event.id);
      emit(state.copyWith(
        notes: [...state.notes]
          ..removeWhere((element) => element.id == event.id),
      ));
    });
    on<Refresh>((event, emit) async {
      if (state.status.isRefreshing) return;

      emit(state.copyWith(status: DataStatus.refreshing));

      await _getFirstPage(emit);
    });
    on<LoadMore>((event, emit) async {
      if (state.status.isLoadingMore || state.isLastPage) return;

      emit(state.copyWith(status: DataStatus.loadingMore));
      final newPage = state.page + 1;
      final result = await _noteRepository.getMany(currentPage: newPage);

      if (result.success) {
        final newNotes = result.data ?? [];
        if (newNotes.isNotEmpty) {
          emit(
            state.copyWith(
              notes: [...state.notes, ...newNotes],
              status: DataStatus.initial,
              page: newPage,
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: DataStatus.initial,
              isLastPage: true,
            ),
          );
        }
      } else {
        emit(
          state.copyWith(
            message: result.message,
            status: DataStatus.error,
          ),
        );
      }
    });
    on<FilterNote>((event, emit) {
      List<NoteItem> notes = [...state.notes];
      switch (event.type) {
        case FilterDataType.delete:
          notes.removeWhere((element) => element.id == event.data!);
          break;
        case FilterDataType.update:
          final updateNoteIndex = notes.indexWhere(
              (element) => element.id == (event.data as NoteItem).id);
          if (updateNoteIndex != -1) {
            notes[updateNoteIndex] = event.data;
          }
          break;
        case FilterDataType.create:
          notes = [event.data, ...notes];
          break;
      }

      emit(state.copyWith(notes: notes));
    });
  }

  Future<void> _getFirstPage(Emitter<NoteState> emit) async {
    final result = await _noteRepository.getMany(currentPage: 1);

    if (result.success) {
      emit(state.copyWith(
        notes: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }
}
