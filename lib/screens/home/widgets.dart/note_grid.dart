// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/models/models.dart';
import 'package:note_app/utils/utils.dart';

class NoteGrid extends StatelessWidget {
  const NoteGrid({
    Key? key,
    required this.notes,
    required this.onNotePressed,
  }) : super(key: key);

  final List<NoteItem> notes;
  final void Function(NoteItem) onNotePressed;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final note = notes[index];
          return NoteGridItem(
            note: note,
            onPressed: onNotePressed,
          );
        },
        childCount: notes.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
    );
  }
}

class NoteGridItem extends StatelessWidget {
  const NoteGridItem({
    Key? key,
    required this.note,
    required this.onPressed,
  }) : super(key: key);

  final NoteItem note;
  final void Function(NoteItem) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(note),
      child: Card(
        color: HexColor.fromHex(note.color),
        elevation: 3.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.title,
                      maxLines: 3,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      note.content,
                      maxLines: 5,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 12.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    formatDateTime(
                      note.createdAt,
                      hasTime: false,
                    ),
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
