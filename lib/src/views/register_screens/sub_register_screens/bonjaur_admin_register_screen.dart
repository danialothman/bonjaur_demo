import 'package:flutter/material.dart';

class BonjaurAdminRegisterScreen extends StatefulWidget {
  const BonjaurAdminRegisterScreen({super.key});

  @override
  State<BonjaurAdminRegisterScreen> createState() =>
      _BonjaurAdminRegisterScreenState();
}

class _BonjaurAdminRegisterScreenState
    extends State<BonjaurAdminRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register as Bonjaur Admin"),
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: null, child: Text("Terms & Conditions")),
              Text(" | "),
              TextButton(onPressed: null, child: Text("Privacy Policy")),
            ],
          )
        ],
      ),
    );
  }
}
