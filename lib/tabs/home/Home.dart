import 'dart:ui';
import 'package:abiplaner/tabs/home/menus/MenuBar.dart';
import 'package:abiplaner/tabs/home/widgets/schedule.dart';
import 'package:flutter/material.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:week_of_year/week_of_year.dart';

var physicalScreenSize = window.physicalSize;
final GlobalKey<ScaffoldState> _menuOpen = GlobalKey();


Widget HomeWidget =
    const Dashboard();

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Color getColorForTime(int _number){
    _number--;
    final _now = DateTime.now();
    double _hour = _now.hour +  _now.minute / 60;
    if (_hour >= Unterrichtszeiten[_number] && _hour <= Unterrichtszeiten[_number] + (lengthOfLesson / 60)) return Colors.deepOrange;
    if (_number == 0) return Colors.white;
    if (_hour >= (Unterrichtszeiten[_number -1] + 0.75) && _hour <= Unterrichtszeiten[_number] ) return Colors.lightBlue;
    return Colors.white;
  }

  Color getColorForDay(int _number){
    final _now = DateTime.now();
    if (_now.weekday == _number) return Colors.deepOrange;
    return Colors.white;
  }

  String getCalendarWeek(){
    final _now = DateTime.now();
    String _cw = _now.weekOfYear.toString();
    return _cw;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MenuBar(),
        drawerEnableOpenDragGesture: false,
        key: _menuOpen,
        appBar: AppBar(
          title: Text("Dashboard - KW " + getCalendarWeek()),
          centerTitle: true,
          backgroundColor: MyThemes.ThemeMain.bottomAppBarColor,
          leading:
          IconButton(icon: const Icon(Icons.menu), enableFeedback: false, splashRadius: 5, onPressed: () {
            _menuOpen.currentState!.openDrawer();
            Fluttertoast.showToast(
              msg: 'opening settings menu',
              toastLength: Toast.LENGTH_SHORT,
            );
            //Settingsmenu
          }),
        ),
        body:
        Column(
            children: [
              const SizedBox(height: 5),
              SizedBox(height: 20,width:physicalScreenSize.width, child: Row(children: [SizedBox(width: tableWidthSpacing), Expanded(child: GridView.count(crossAxisCount: 5, crossAxisSpacing: 10,children: [
                Text("Mon",textAlign: TextAlign.center,style: TextStyle(color: getColorForDay(1))),
                Text("Tue",textAlign: TextAlign.center,style: TextStyle(color: getColorForDay(2))),
                Text("Wed",textAlign: TextAlign.center,style: TextStyle(color: getColorForDay(3))),
                Text("Thu",textAlign: TextAlign.center,style: TextStyle(color: getColorForDay(4))),
                Text("Fri",textAlign: TextAlign.center,style: TextStyle(color: getColorForDay(5)))],),),
                SizedBox(width: tableWidthSpacing - 10,),],),),

              SizedBox(width:physicalScreenSize.width, height: 356.5,child:Row(
                children: [
                  SizedBox(width: tableWidthSpacing, child: Column(children: [
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("1", style: TextStyle(color: getColorForTime(1)))), height: 34),
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("2", style: TextStyle(color: getColorForTime(2)))), height: 45),
                    SizedBox(child: Align(alignment: const Alignment(0, 0.05), child: Text("3", style: TextStyle(color: getColorForTime(3)))), height: 33.5),
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("4", style: TextStyle(color: getColorForTime(4)))), height: 44),
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("5", style: TextStyle(color: getColorForTime(5)))), height: 37),
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("6", style: TextStyle(color: getColorForTime(6)))), height: 42),
                    SizedBox(child: Align(alignment: const Alignment(0, -0.3), child: Text("7", style: TextStyle(color: getColorForTime(7)))), height: 47),
                    SizedBox(child: Align(alignment: const Alignment(0, 0), child: Text("8", style: TextStyle(color: getColorForTime(8)))), height: 22),
                    SizedBox(child: Align(alignment: const Alignment(0, 0.1), child: Text("9", style: TextStyle(color: getColorForTime(9)))), height: 52),

                  ])),
                  Expanded(child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      childAspectRatio: 3.69/2,
                    ),
                    itemCount: gridCount.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = gridCount[index];

                      return boxWidget(item);
                    },
                  ),
                  ),
                  SizedBox(width: tableWidthSpacing - 10),
                ],

              ),),
              const SizedBox(height: 10),
              SizedBox(width: physicalScreenSize.width, height: 100,child:Row(
                children: [
                  SizedBox(width: physicalScreenSize.width/30),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF2f3a4b),
                    ),
                  ),),
                  SizedBox(width: physicalScreenSize.width/100),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF2f3a4b),
                    ),
                  ),),
                  SizedBox(width: physicalScreenSize.width/41),
                ],
              ),
              )]));
  }
}