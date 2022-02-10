import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/tabs/home/Home.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


String getText(int _number){
  List<int> _index = get2dPositionInTT(_number);
  return subjectSchedule[_index[0]][_index[1]];
}


Color getBackgroundColor(int _number){
  return Color(0xFF2f3a4b);
}


Color getColor(){
  return Colors.green;
}

List<int> get2dPositionInTT(int _number){
  int _lessonInt = (_number/5).floor();
  for(int i = 0; i < 5; i++){
    if((_number - i) % 5 == 0) return [i, _lessonInt];
  }
  return[0,0];
}


Widget boxWidget(String _number) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: getBackgroundColor(int.parse(_number)),
  ),
  child: Center(child: Text(getText(int.parse(_number)), style: TextStyle(fontSize: 16, color: getColor()),),),
);