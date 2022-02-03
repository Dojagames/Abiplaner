import 'package:abiplaner/menus/MenuBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';


final GlobalKey<ScaffoldState> _menuOpen = GlobalKey();

Widget HomeWidget =
Scaffold(
  drawer: const MenuBar(),
  drawerEnableOpenDragGesture: false,
  key: _menuOpen,
  appBar: AppBar(
    title: Text("Welcome $username"),
    centerTitle: true,
    backgroundColor: MyThemes.ThemeMain.bottomAppBarColor,
    leading:
      IconButton(icon: const Icon(Icons.menu), enableFeedback: false, splashRadius: 5, onPressed: () {
        _menuOpen.currentState!.openDrawer();
        Fluttertoast.showToast(
            msg: 'opening settings menu',
            toastLength: Toast.LENGTH_SHORT,
        );
        //Settingsmenu
      }),
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
