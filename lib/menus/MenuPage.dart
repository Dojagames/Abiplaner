import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  @deprecated
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}