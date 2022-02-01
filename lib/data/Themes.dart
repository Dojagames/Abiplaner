import 'package:flutter/material.dart';

class MyThemes {
  static final Theme1 = ThemeData(
    backgroundColor: const Color(0xFF182437),
    scaffoldBackgroundColor: const Color(0xFF182437),
    canvasColor: Colors.lightBlue, colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xFF6490d6)),
    //Listview
  );
  static final Theme2 = ThemeData(

  );

  var pallette = <Color>[
    const Color(0xFF182437), // Background
    const Color(0xFF6490d6), // Accent
    const Color(0xFF283C5C), // Tabbar

  ];
}