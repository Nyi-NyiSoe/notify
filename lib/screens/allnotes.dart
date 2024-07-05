import 'package:flutter/material.dart';

class AllNotes extends StatelessWidget {
  const AllNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.25,
          centerTitle: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text('N O T I F Y'),
            background: Container(
              color: Colors.greenAccent,
            ),
          ),
        ),
        SliverGrid.builder(
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                color: Colors.greenAccent,
              );
            })
      ],
    );
  }
}
