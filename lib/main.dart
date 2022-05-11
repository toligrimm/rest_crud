import 'package:flutter/material.dart';
import 'package:rest_crud/views/note_list.dart';

void main() =>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'crud rest',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: NoteList(),
    );
  }
}
