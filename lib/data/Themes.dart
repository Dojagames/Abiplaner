import 'package:flutter/material.dart';
import 'vars.dart';

class MyThemes {
  static final ThemeMain = ThemeData(
    backgroundColor: themeList[selectedTheme].backgroundColor,
    scaffoldBackgroundColor: themeList[selectedTheme].scaffoldBackgroundColor,
    canvasColor: themeList[selectedTheme].canvasColor,
    colorScheme: themeList[selectedTheme].colorScheme,
    //Listview
  );




  var pallette = <Color>[
    const Color(0xFF182437), // Background
    const Color(0xFF6490d6), // Accent
    const Color(0xFF283C5C), // Tabbar

  ];
}

List<ThemeData> themeList = [
  ThemeData(
    backgroundColor: const Color(0xFF182437),
    scaffoldBackgroundColor: const Color(0xFF182437),
    canvasColor: Colors.lightBlue,
    colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xFF6490d6)),
  ),
  ThemeData(
    backgroundColor: const Color(0xFF182437),
    scaffoldBackgroundColor: const Color(0xFF182437),
    canvasColor: Colors.lightBlue,
    colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xFF6490d6)),
  )
];