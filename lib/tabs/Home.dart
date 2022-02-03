import 'package:abiplaner/menus/MenuBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
      IconButton(icon: const Icon(Icons.settings), enableFeedback: false, splashRadius: 5, onPressed: () {
        _menuOpen.currentState!.openDrawer();
        Fluttertoast.showToast(
            msg: 'opening settings menu',
            toastLength: Toast.LENGTH_SHORT,
        );
        //Settingsmenu
      }),
  ),
  body: Container(
    child: SfCalendar(
      view: CalendarView.week,
      timeSlotViewSettings: const TimeSlotViewSettings(
          timelineAppointmentHeight: 0),

      ),
    )
);
