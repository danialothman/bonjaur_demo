import 'package:flutter/material.dart';

class ParentGuardianRegisterScreen extends StatefulWidget {
  const ParentGuardianRegisterScreen({super.key});

  @override
  State<ParentGuardianRegisterScreen> createState() =>
      _ParentGuardianRegisterScreenState();
}

class _ParentGuardianRegisterScreenState
    extends State<ParentGuardianRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register as Parent / Guardian"),
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
