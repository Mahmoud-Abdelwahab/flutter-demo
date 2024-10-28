import 'package:flutter/material.dart';
import 'package:flutter_projects/moduls/archieved_tasks.dart';
import 'package:flutter_projects/moduls/done_tasks.dart';
import 'package:flutter_projects/moduls/new_tasks.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0;
  List<Widget> screens = [
    Tasks(),
    Done(),
    ArcheivedTasks(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("TODO"),
      ) ,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        items:
          [
            BottomNavigationBarItem(icon:
            Icon(Icons.task),
              label: "Tasks",


            ),
            BottomNavigationBarItem(icon:
            Icon(Icons.check_box_outlined),
              label: "Dons",
            ),
            BottomNavigationBarItem(icon:
            Icon(Icons.archive_outlined),
              label: "Archieved",
            ),
          ],
        currentIndex: currentIndex,
        onTap: (index) {
         setState(() {
           currentIndex = index;
         });
        },
      ),
    );
  }
}
