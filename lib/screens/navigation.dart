import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home.dart';
import 'package:flutter_project/screens/firstPage.dart';
import 'package:flutter_project/screens/secondPage.dart';
import 'package:flutter_project/screens/thirdPage.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  final screens = [
    Home(),
    firstPage(),
    secondPage(),
    thirdPage(),

  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.green,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "accueil",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "liste de recettes",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.av_timer_rounded),
                label: "minuteurs",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notes),
                label: "notes",
              ),
            ]),
      );
}
