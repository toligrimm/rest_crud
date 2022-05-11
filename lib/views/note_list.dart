import 'package:flutter/material.dart';

import '../models/note_for_listing.dart';
import 'note_modify.dart';

class NoteList extends StatelessWidget {
  NoteList({Key? key}) : super(key: key);

  final notes = [
    NoteForListing(
      noteID: '1',
      noteTitle: 'Note 1',
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: '2',
      noteTitle: 'Note 2',
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
    NoteForListing(
      noteID: '3',
      noteTitle: 'Note 3',
      createDateTime: DateTime.now(),
      latestEditDateTime: DateTime.now(),
    ),
  ];

  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('REST CRUD'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NoteModify(noteID: '',)));
          },
          child: const Icon(Icons.add),
        ),
        body: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(
                notes[index].noteTitle,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text(
                  'last edited ${formatDateTime(notes[index].latestEditDateTime)}'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => NoteModify(noteID: notes[index].noteID)));
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(
            height: 1,
            color: Colors.green,
          ),
          itemCount: notes.length,
        ));
  }
}
