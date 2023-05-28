import 'package:flutter/material.dart';

class SchoolAdminRegisterScreen extends StatefulWidget {
  const SchoolAdminRegisterScreen({super.key});

  @override
  State<SchoolAdminRegisterScreen> createState() =>
      _SchoolAdminRegisterScreenState();
}

class _SchoolAdminRegisterScreenState extends State<SchoolAdminRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register as School Admin"),
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
