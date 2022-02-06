import 'dart:ui';
import 'package:abiplaner/tabs/home/menus/MenuBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';

var physicalScreenSize = window.physicalSize;
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
    Column(
      children: [
        SizedBox(height: 5),
        SizedBox(height: 20,width:physicalScreenSize.width, child: Row(children: [SizedBox(width: 40), Expanded(child: GridView.count(crossAxisCount: 5, crossAxisSpacing: 10,children: const [Text("Mon",textAlign: TextAlign.center),Text("Tue",textAlign: TextAlign.center),Text("Wed",textAlign: TextAlign.center), Text("Thu",textAlign: TextAlign.center), Text("Fri",textAlign: TextAlign.center)],),), SizedBox(width: 10,),],),),
        SizedBox(width:physicalScreenSize.width, height: 500,child:Row(
          children: [
            SizedBox(width: 40),
            Expanded(child: GridView.count(
              crossAxisCount: 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 8.0,
                children: [
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
        ),
        SizedBox(width: 10),
              ],

            ),),
      ],
    ),
);
