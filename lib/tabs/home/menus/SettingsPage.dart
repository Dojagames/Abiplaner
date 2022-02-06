import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("nothing yet")
          )
        ],
      ),
    );
  }
}