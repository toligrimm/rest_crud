import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  const NoteModify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('create'),
      ),
      body: Column(
        children: const <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'note'),
          ),
        ],
      ),
    );
  }
}
