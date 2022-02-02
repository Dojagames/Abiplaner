import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';


Widget HomeWidget =
Scaffold(
  appBar: AppBar(
    title: Text("Welcome $username"),
    centerTitle: true,
    backgroundColor: MyThemes.ThemeMain.bottomAppBarColor,
    actions: [
      IconButton(icon: const Icon(Icons.settings),splashRadius: 5 ,onPressed: () {
        Fluttertoast.showToast(
            msg: 'opening settings menu',
            toastLength: Toast.LENGTH_SHORT,
        );
        //popup Settingsmenu
      }),
    ],
  ),
  body: Center(child: Text("Page 1")),
);