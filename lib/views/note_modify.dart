import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {

final String noteID;
   NoteModify({required this.noteID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(noteID.isEmpty? 'Create note' : 'Edit note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'note title'),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
                decoration: InputDecoration(labelText: 'description')),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  if (isEditing) {
                  } else {

                  }
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
