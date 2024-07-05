import 'package:flutter/material.dart';

class AllNotes extends StatelessWidget {
  const AllNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context,index){
                      return Card(
                        child: Column(
                          children: [
                            Text('Note title'),
                            Text('Note content')
                          ],
                        ),
                      );
                    }))));
  }
}
