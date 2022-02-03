import 'package:abiplaner/menus/MenuBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';



Widget HomeWidget =
Scaffold(
  drawer: const MenuBar(),
  appBar: AppBar(
    title: Text("Welcome $username"),
    centerTitle: true,
    backgroundColor: MyThemes.ThemeMain.bottomAppBarColor,
    actions: [
      IconButton(icon: const Icon(Icons.settings), enableFeedback: false, splashRadius: 5, onPressed: () {

        Fluttertoast.showToast(
            msg: 'opening settings menu',
            toastLength: Toast.LENGTH_SHORT,
        );
        //Settingsmenu
      }),
    ],
  ),
  body:
        GridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 10.0,
          children: [
            Center(child: Text("Mon", textAlign: TextAlign.center,)),
            Center(child: Text("Tue", textAlign: TextAlign.center,)),
            Center(child: Text("Wed", textAlign: TextAlign.center,)),
            Center(child: Text("Thu", textAlign: TextAlign.center,)),
            Center(child: Text("Fri", textAlign: TextAlign.center,)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF2f3a4b),
              ),
            ),


          ],
  ),
);
