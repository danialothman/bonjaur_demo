import 'package:bonjaur_demo/src/views/logged_in_screens/bus_driver_logged_in_screen/sub_pages/activity_screen.dart';
import 'package:bonjaur_demo/src/views/logged_in_screens/bus_driver_logged_in_screen/sub_pages/history_screen.dart';
import 'package:bonjaur_demo/src/views/logged_in_screens/bus_driver_logged_in_screen/sub_pages/mission_screen.dart';
import 'package:bonjaur_demo/src/views/logged_in_screens/bus_driver_logged_in_screen/sub_pages/settings_screen.dart';
import 'package:flutter/material.dart';

class BusDriverLoggedInScreen extends StatefulWidget {
  const BusDriverLoggedInScreen({super.key});

  @override
  State<BusDriverLoggedInScreen> createState() =>
      _BusDriverLoggedInScreenState();
}

class _BusDriverLoggedInScreenState extends State<BusDriverLoggedInScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _appBarTitleOptions = [
    const Text("Activity"),
    const Text("Mission"),
    const Text("History"),
    const Text("Settings"),
  ];

  static const List<Widget> _bodyWidgetOptions = <Widget>[
    ActivityScreen(),
    MissionScreen(),
    HistoryScreen(),
    SettingsScreen(),
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
        title: _appBarTitleOptions.elementAt(_selectedIndex),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: _bodyWidgetOptions.elementAt(_selectedIndex),
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
