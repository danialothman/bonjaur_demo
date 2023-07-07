import 'package:flutter/material.dart';

class LoggedInScreen extends StatefulWidget {
  const LoggedInScreen({super.key});

  @override
  State<LoggedInScreen> createState() => _LoggedInScreenState();
}

class _LoggedInScreenState extends State<LoggedInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login as"),
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
                    debugPrint("Go to PARENT/GUARDIAN logged in view");
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
                    debugPrint("Go to SCHOOL ADMIN logged in view");
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
                    debugPrint("Go to BUS DRIVER logged in view");
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
                    debugPrint("Go to BONJAUR ADMIN logged in view");
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
