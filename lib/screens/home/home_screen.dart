import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/blocs/blocs.dart';
import 'package:note_app/enums/enums.dart';
import 'package:note_app/models/models.dart';
import 'package:note_app/screens/add_note/add_note_screen.dart';
import 'package:note_app/screens/add_note/bloc/add_note_bloc.dart';
import 'package:note_app/screens/home/bloc/note_bloc.dart';
import 'package:note_app/screens/home/widgets.dart/widgets.dart';
import 'package:note_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController!.position.extentAfter == 0) {
      context.read<NoteBloc>().add(const LoadMore());
    }
    return false;
  }

  void _onNotePressed(NoteItem note) {
    context.read<AddNoteBloc>().add(SetSelectedNote(note));
    Navigator.of(context).pushNamed(AddNoteScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BlocSelector<NoteBloc, NoteState, NoteViewType>(
                selector: (state) {
                  return state.viewType;
                },
                builder: (context, state) {
                  final noteBloc = context.read<NoteBloc>();

                  return state.isGrid
                      ? AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          icon: Icons.table_chart_outlined,
                          tooltip: "Show as Grid",
                        )
                      : AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          icon: Icons.list,
                          tooltip: "Show as List",
                        );
                },
              ),
              BlocConsumer<AppThemeBloc, AppThemeState>(
                listener: (_, __) {},
                builder: (context, state) {
                  final appThemeBloc = context.read<AppThemeBloc>();

                  return state.map(
                    dark: (value) => AppIconButton(
                      onPressed: () =>
                          appThemeBloc.add(const ThemeModeChanged(true)),
                      icon: Icons.dark_mode,
                    ),
                    light: (_) => AppIconButton(
                      onPressed: () =>
                          appThemeBloc.add(const ThemeModeChanged(false)),
                      icon: Icons.brightness_4,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocConsumer<NoteBloc, NoteState>(
        listener: (_, __) {},
        builder: (context, state) {
          final isLoading =
              state.status.isRefreshing || state.status.isLoadingMore;

          return FloatingActionButton(
            onPressed: () => isLoading
                ? null
                : Navigator.of(context).pushNamed(AddNoteScreen.routeName),
            backgroundColor: isLoading
                ? Theme.of(context).primaryColorLight
                : Theme.of(context).primaryColor,
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
          );
        },
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<NoteBloc>().add(const Refresh());
        },
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) => _onScrollNotification(notification),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const AppSliverAppBar(),
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: BlocConsumer<NoteBloc, NoteState>(
                  listener: (_, __) {},
                  builder: (context, state) {
                    if (state.status.isLoading) {
                      return const SliverFillRemaining(
                        child: BlankContent(
                          isLoading: true,
                        ),
                      );
                    }

                    if (!state.hasNotes) {
                      return const SliverFillRemaining(
                        child: BlankContent(),
                      );
                    }

                    return state.viewType.isGrid
                        ? NoteGrid(
                            notes: state.notes,
                            onNotePressed: _onNotePressed,
                          )
                        : NoteList(
                            notes: state.notes,
                            onNotePressed: _onNotePressed,
                          );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
