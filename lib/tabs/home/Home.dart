import 'dart:ui';
import 'package:abiplaner/tabs/home/menus/MenuBar.dart';
import 'package:abiplaner/tabs/home/widgets/schedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    title: Text("Dashboard - KW"),
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
        SizedBox(height: 20,width:physicalScreenSize.width, child: Row(children: [SizedBox(width: tableWidthSpacing), Expanded(child: GridView.count(crossAxisCount: 5, crossAxisSpacing: 10,children: const [Text("Mon",textAlign: TextAlign.center),Text("Tue",textAlign: TextAlign.center),Text("Wed",textAlign: TextAlign.center), Text("Thu",textAlign: TextAlign.center), Text("Fri",textAlign: TextAlign.center)],),), SizedBox(width: tableWidthSpacing - 10,),],),),
        SizedBox(width:physicalScreenSize.width, height: 356.5,child:Row(
          children: [
            SizedBox(width: tableWidthSpacing, child: Column(children: [
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("1")), height: 34)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("2")), height: 45)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0.05), child: Text("3")), height: 33.5)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("4")), height: 44)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("5")), height: 37)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("6")), height: 42)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, -0.3), child: Text("7")), height: 47)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0), child: Text("8")), height: 22)),
              SizedBox(child: Container(child: Align(alignment: Alignment(0, 0.1), child: Text("9")), height: 52)),

            ])),
            Expanded(child: GridView.count(
              crossAxisCount: 5,
                crossAxisSpacing: 6.0,
                mainAxisSpacing: 6.0,
                childAspectRatio: 3.69/2,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2f3a4b),
                    ),
                    child: Center(child: Text("Mathe", style: TextStyle(fontSize: 16, color: Colors.green),),),
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
        SizedBox(width: tableWidthSpacing - 10),
              ],

            ),),
    SizedBox(height: 10),
    SizedBox(width: physicalScreenSize.width, height: 100,child:Row(
      children: [
        SizedBox(width: physicalScreenSize.width/30),
        Expanded(child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF2f3a4b),
          ),
        ),),
        SizedBox(width: physicalScreenSize.width/100),
        Expanded(child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF2f3a4b),
          ),
        ),),
        SizedBox(width: physicalScreenSize.width/41),
        ],
    ),
)]));
