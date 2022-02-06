import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        backgroundColor: Colors.black,
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