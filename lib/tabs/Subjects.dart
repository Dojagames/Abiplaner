import 'package:abiplaner/data/Subject.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:abiplaner/data/vars.dart' as vars;

/*
show all selected Subjects,
  click on subject for overview (add/see marks, Homework/Exam dates)

button to edit / change subjects

first time opening this page: automatically open edit page.

use listview to display and setState(){}; to refresh the widget

in View, sort in LK / gK and alphabetically
*/


Widget SubjectWidget =
Scaffold(
  body: const Center(child: Text("Page 2")),
  floatingActionButton: FloatingActionButton(
      onPressed: (){
        addSubject("String");

      },
    child: const Icon(Icons.edit),
  ),
);





void addSubject(String _subjectName){
  vars.addSubject(Subject(_subjectName));
}