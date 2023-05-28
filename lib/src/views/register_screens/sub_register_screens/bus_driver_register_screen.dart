import 'package:flutter/material.dart';

class BusDriverRegisterScreen extends StatefulWidget {
  const BusDriverRegisterScreen({super.key});

  @override
  State<BusDriverRegisterScreen> createState() =>
      _BusDriverRegisterScreenState();
}

class _BusDriverRegisterScreenState extends State<BusDriverRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register as Bus Driver"),
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
