enum NoteViewType {
  list,
  grid;

  bool get isList => this == NoteViewType.list;
  bool get isGrid => this == NoteViewType.grid;
}
