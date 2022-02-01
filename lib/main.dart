import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'tabs/Calendar.dart';
import 'tabs/Stats.dart';
import 'tabs/Subjects.dart';
import 'tabs/Home.dart';
import 'data/vars.dart';
import 'data/Themes.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abiplaner',
      theme: MyThemes.Theme1,
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


  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: SizedBox(
          height: 52,
        child: Container(
          color: const Color(0xFF283C5C),
          child: TabBar(
            tabs: [
              Tab(icon: SizedBox(child: Icon(Icons.home_outlined, color: _tabController.index == 0 ? Colors.white : Colors.black), height: 15), text: "Home"),
              Tab(icon: SizedBox(child: Icon(Icons.subject, color: _tabController.index == 1 ? Colors.white : Colors.black), height: 15), text: "Fächer"),
              Tab(icon: SizedBox(child: Icon(Icons.calendar_today_rounded, color: _tabController.index == 2 ? Colors.white : Colors.black), height: 15),text: "Kalender"),
              Tab(icon: SizedBox(child: Icon(Icons.show_chart, color: _tabController.index == 3 ? Colors.white : Colors.black), height: 15), text: "stats"),
            ],
            controller: _tabController,
          ),
        )
      ),
    );
  }
}