import 'package:flutter/material.dart';

class BusDriverLoggedInScreen extends StatefulWidget {
  const BusDriverLoggedInScreen({super.key});

  @override
  State<BusDriverLoggedInScreen> createState() =>
      _BusDriverLoggedInScreenState();
}

class _BusDriverLoggedInScreenState extends State<BusDriverLoggedInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity"),
        automaticallyImplyLeading: false,
      ),
      body: const Center(child: Text("Yo")),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black54),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.route), label: "Activity"),
            BottomNavigationBarItem(
                icon: Icon(Icons.rocket_launch), label: "Mission"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
