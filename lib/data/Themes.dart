import 'package:flutter/material.dart';
import 'vars.dart';

class MyThemes {
  static final ThemeMain = ThemeData(
    backgroundColor: themeList[selectedTheme].backgroundColor,
    scaffoldBackgroundColor: themeList[selectedTheme].scaffoldBackgroundColor,
    canvasColor: themeList[selectedTheme].canvasColor,
    colorScheme: themeList[selectedTheme].colorScheme,
    bottomAppBarColor: themeList[selectedTheme].bottomAppBarColor,
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
    backgroundColor: const Color(0xFF162032),
    scaffoldBackgroundColor: const Color(0xFF182437),
    canvasColor: Colors.lightBlue,
    colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xFF6490d6)),
    bottomAppBarColor: const Color(0xFF283C5C),


  ),
  ThemeData(
    backgroundColor: const Color(0xFF464E47),
    scaffoldBackgroundColor: const Color(0xFF464E47),
    canvasColor: Colors.teal,
    colorScheme: const ColorScheme.dark().copyWith(secondary: const Color(0xFF59C55E)),
    bottomAppBarColor: const Color(0xFF308834),
  ),
  ThemeData(
    backgroundColor: const Color(0xFFF5F9E9),
    scaffoldBackgroundColor: const Color(0xFFF5F9E9),
    canvasColor: Colors.grey,
    colorScheme: const ColorScheme.light().copyWith(secondary: const Color(0xFF515751)),
    bottomAppBarColor: const Color(0xFFC2C1A5),
  )
];

enum Themes {
  DARKBLUE,
  DARKGREEN,
  SOFTLIGHT
}