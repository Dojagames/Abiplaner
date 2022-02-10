import 'package:abiplaner/data/vars.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<double> _heightIndex = [
  34, 45, 33.5, 44, 37, 42, 47, 22, 52
];

String getText(int _number){
  int _lessonInt = (_number/5).floor();
  for(int i = 0; i < 5; i++){
    if((_number - i) % 5 == 0) return subjectSchedule[i][_lessonInt];
  }
return "";
}

Color getColor(){
  return Colors.green;
}

Widget boxWidget(String _number) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color(0xFF2f3a4b),
  ),
  child: Center(child: Text(getText(int.parse(_number)), style: TextStyle(fontSize: 16, color: getColor()),),),
);