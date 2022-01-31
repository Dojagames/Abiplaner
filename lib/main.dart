import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'tabs/Calendar.dart';
import 'tabs/Stats.dart';
import 'tabs/Subjects.dart';
import 'tabs/Home.dart';
import 'data/vars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abiplaner',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const MyHomePage(title: 'MainPage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;


  static var _kTabPages = <Widget>[
    HomeWidget,
    SubjectWidget,
    CalenderWidget,
    StatWidget,
  ];

  static const _kTabs = <Widget>[
    Tab(icon: Icon(Icons.home), text: "Home"),
    Tab(icon: Icon(Icons.subject), text: "Fächer"),
    Tab(icon: Icon(Icons.calendar_today),text: "Kalender"),
    Tab(icon: Icon(Icons.bar_chart), text: "stats"),

  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}