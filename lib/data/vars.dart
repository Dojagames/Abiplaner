import 'package:abiplaner/data/Subject.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'Themes.dart';

List<Subject> _subjects = List.empty();
int selectedTheme = Themes.DARKBLUE.index;
String username = "User";
int maxHours = 7;
List<String> markList= [];

saveFile(String _subject, String _type) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final _now = DateTime.now();
  bool firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) firsthalf = true;

  String _schoolyear;

  if(firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
    else _schoolyear = (_now.year + 1).toString() + "/" + _now.year.toString();
  // save list to correct sp
  if(_type == "Mark"){

  }
  if(_type == "Event"){

  }
}

saveVar(String _subject, String _type, int _value){
  // add object to corresponding List
}

loadData() async{
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // List <String> _buffer = <String>[];
  // _buffer = prefs.getStringList("subjects")!;
  // _buffer.forEach((e) {
  //   _subjects.add();
  // });
}

saveData() async{
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // List <String> _buffer = <String>[];
  // _subjects.forEach((e) {
  //     _buffer.add(e.toString());
  // });
  // await prefs.setStringList("subjects", _buffer);
}

getSubject(int location) {
  return _subjects.elementAt(location);
}

getSubjects() {
  return _subjects;
}

setTheme(Themes theme) {
  selectedTheme = theme.index;
}

addSubject(Subject subject) {
	_subjects.add(subject);
}

removeSubject(int location) {
  _subjects.removeAt(location);
}