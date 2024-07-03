import 'package:flutter/material.dart';
import 'package:notify/screens/editnotepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const EditNotePage();
                }),
              );
            },
            child: const Icon(Icons.note_add),
          ),
          body: CustomScrollView(
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      color: Colors.primaries[index % Colors.primaries.length],
                    ),
                  );
                },
                itemCount: 10,
              )
            ],
          )),
    );
  }
}
