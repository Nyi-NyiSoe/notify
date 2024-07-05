import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditNotePage extends StatefulWidget {
  EditNotePage({super.key});

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  late QuillController _controller;

  @override
  void initState() {
    super.initState();
    _controller = QuillController.basic();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Edit Note'),
          actions: [
            IconButton(
              onPressed: () {
                
              },
              icon: const Icon(Icons.save),
            )
          ],
        ),
        body: Column(
          children: [
            QuillToolbar.simple(
                configurations: QuillSimpleToolbarConfigurations(
              controller: _controller,
              showBackgroundColorButton: false,
              showAlignmentButtons: false,
              showColorButton: false,
              showClearFormat: false,
            )),
            Expanded(
              child: QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                      controller: _controller, enableScribble: true)),
            ),
          ],
        ),
      ),
    );
  }
}
