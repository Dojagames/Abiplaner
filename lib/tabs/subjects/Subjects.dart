import 'package:abiplaner/data/Subject.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:abiplaner/data/vars.dart' as vars;


Widget SubjectWidget =
    SubjectC();

class SubjectC extends StatefulWidget {
  const SubjectC({Key? key}) : super(key: key);

  @override
  _SubjectCState createState() => _SubjectCState();
}

class _SubjectCState extends State<SubjectC> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Page 2")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}


void addSubject(String _subjectName){
  vars.addSubject(Subject(_subjectName));
}