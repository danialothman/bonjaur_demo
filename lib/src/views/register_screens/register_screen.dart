import 'package:bonjaur_demo/src/views/register_screens/sub_register_screens/bonjaur_admin_register_screen.dart';
import 'package:bonjaur_demo/src/views/register_screens/sub_register_screens/bus_driver_register_screen.dart';
import 'package:bonjaur_demo/src/views/register_screens/sub_register_screens/parent_guardian_register_screen.dart';
import 'package:bonjaur_demo/src/views/register_screens/sub_register_screens/school_admin_register_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint("Go to PARENT/GUARDIAN FORM");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ParentGuardianRegisterScreen()));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 128,
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  "Parent / Guardian",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Go to SCHOOL ADMIN FORM");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SchoolAdminRegisterScreen()));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 128,
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  "School Admin",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint("Go to BUS DRIVER FORM");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BusDriverRegisterScreen()));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 128,
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  "Bus Driver",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(),
                GestureDetector(
                  onTap: () {
                    debugPrint("Go to BONJAUR ADMIN FORM");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BonjaurAdminRegisterScreen()));
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 128,
                        child: Stack(
                          children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  "Bonjaur Admin",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
