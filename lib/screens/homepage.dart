import 'package:flutter/material.dart';
import 'package:notify/screens/allnotes.dart';
import 'package:notify/screens/categorypage.dart';
import 'package:notify/screens/editnotepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 int selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    AllNotes(),
    CategoryPage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
               BottomNavigationBarItem(
                  icon:  Icon(Icons.note_alt_rounded), label: 'All Notes'),
              
              BottomNavigationBarItem(
                  icon:  Icon(Icons.folder), label: 'Category'),
            ],
          ),
          drawer: Drawer(
            child: ListView(children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.greenAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('User name'),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.file_upload),
                title: const Text('Upload Notes'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('Logout'),
                onTap: () {},
              ),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return  EditNotePage();
                }),
              );
            },
            child: const Icon(Icons.note_add),
          ),
          body: CustomScrollView(
            slivers: [
              
              SliverFillRemaining(
                child: _pages.elementAt(selectedIndex),
              )
            
            ],
          )),
    );
  }
}
