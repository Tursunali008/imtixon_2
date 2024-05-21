import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:imtixon_2/pages/accounte_page.dart';
import 'package:imtixon_2/pages/calendar_page.dart';
import 'package:imtixon_2/pages/notfication_page.dart';
import 'package:imtixon_2/pages/homepage.dart';
import 'package:imtixon_2/pages/map_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const NotificationPage(),
    const MapScreen(),
    const CalendarEventScreen(),
    const AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        height: 60,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.map, size: 30, color: Colors.white),
          Icon(Icons.date_range, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
        animationDuration: const Duration(milliseconds: 200),
      ),
    );
  }
}
