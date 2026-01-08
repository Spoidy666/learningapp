import 'package:flutter/material.dart';
import 'package:learningapp/models/unit_model.dart';
import 'package:learningapp/pages/home_page.dart';
import 'package:learningapp/pages/profilePage.dart';
import 'package:learningapp/pages/register.dart';
import 'package:learningapp/pages/settingsPage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _currentIndex = 0;

  final _pages = [HomePage(), Profilepage(), Register()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Theme.of(context).colorScheme.tertiary,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_outlined, size: 24),
            label: "Home",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.book_online),
            icon: Icon(Icons.book, size: 24),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_outlined, size: 24),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
