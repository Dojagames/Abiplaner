import 'package:flutter/material.dart';

class AppearancePage extends StatelessWidget {
  const AppearancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Appearance"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("nothing yet")
          )
        ],
      ),
    );
  }
}