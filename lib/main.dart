import 'package:flutter/material.dart';

import 'src/views/home_screen.dart';

void main() {
  runApp(const BonjaurDemoApp());
}

class BonjaurDemoApp extends StatelessWidget {
  const BonjaurDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bonjaur Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const HomeScreen(title: 'Bonjaur Demo'),
    );
  }
}
