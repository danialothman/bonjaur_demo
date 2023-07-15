import 'package:flutter/material.dart';

class BusDriverLoggedInScreen extends StatefulWidget {
  const BusDriverLoggedInScreen({super.key});

  @override
  State<BusDriverLoggedInScreen> createState() =>
      _BusDriverLoggedInScreenState();
}

class _BusDriverLoggedInScreenState extends State<BusDriverLoggedInScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _titleOptions = [
    const Text("Activity"),
    const Text("Mission"),
    const Text("History"),
    const Text("Settings"),
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Activity',
    ),
    Text(
      'Index 1: Mission',
    ),
    Text(
      'Index 2: History',
    ),
    Text(
      'Index 3: Setting',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titleOptions.elementAt(_selectedIndex),
        automaticallyImplyLeading: false,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black54),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.route),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch),
              label: "Mission",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
