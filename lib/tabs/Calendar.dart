import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

Widget CalenderWidget =
  Scaffold(
    body: Container(
      child: SfCalendar(
        view: CalendarView.month,
      ),
    )
);