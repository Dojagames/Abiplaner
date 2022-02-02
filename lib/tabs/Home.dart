import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


Widget HomeWidget =
Scaffold(
  appBar: AppBar(
    title: Text("Welcome $username"),
    centerTitle: true,
    backgroundColor: MyThemes.ThemeMain.bottomAppBarColor,
    actions: [
      IconButton(icon: const Icon(Icons.settings),enableFeedback: false,splashRadius: 5 ,onPressed: () {
        Fluttertoast.showToast(
            msg: 'opening settings menu',
            toastLength: Toast.LENGTH_SHORT,
        );//popup Settingsmenu
      }),
    ],
  ),
  body: SfCalendar(
    view: CalendarView.workWeek,
    timeSlotViewSettings: TimeSlotViewSettings(
        startHour: 1,
        endHour: maxHours.toDouble(),
        nonWorkingDays: <int>[DateTime.friday, DateTime.saturday]),
  )
);
