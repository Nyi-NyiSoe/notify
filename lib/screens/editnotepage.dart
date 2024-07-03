import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('Edit Note'),
          actions: [
            IconButton(
              onPressed: () {},
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
              showBoldButton: true,
              showAlignmentButtons: false,
              showColorButton: false,
              showItalicButton: true,
              showUnderLineButton: true,
              showStrikeThrough: true,
              showCenterAlignment: true,
              showLeftAlignment: true,
              showClearFormat: false,
            )),
            Expanded(
                child: QuillEditor.basic(
                    configurations:
                        QuillEditorConfigurations(controller: _controller))),
          ],
        ),
      ),
    );
  }
}
