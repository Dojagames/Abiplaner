import 'package:abiplaner/data/Subject.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'Themes.dart';

List<Subject> _subjects = List.empty();
int selectedTheme = Themes.DARKBLUE.index;
String username = "User";
int maxHours = 7;
List<String> subjectNamesList = [];
List<List<String>> SubjectsEvents = [];
List<List<String>> SubjectsMarks = [];


void loadAll() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final _now = DateTime.now();
  bool firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) firsthalf = true;
  String _schoolyear;
  if(firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
  else _schoolyear = (_now.year + 1).toString() + "/" + _now.year.toString();

  for(int i = 0; i < subjectNamesList.length; i++){
    List<String> _bufferEvents = prefs.getStringList("$_schoolyear/" + subjectNamesList[i] + "/Events")!;
    SubjectsEvents.add(_bufferEvents);
    List<String> _bufferMarks = prefs.getStringList("$_schoolyear/" + subjectNamesList[i] + "/Marks")!;
    SubjectsMarks.add(_bufferMarks);
  }
}

void saveALl() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final _now = DateTime.now();
  bool firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) firsthalf = true;
  String _schoolyear;

  if(firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
  else _schoolyear = (_now.year + 1).toString() + "/" + _now.year.toString();
  for(int i = 0; i < subjectNamesList.length; i++){
    prefs.setStringList("$_schoolyear/" + subjectNamesList[i] + "/Events", SubjectsEvents[i]);
    prefs.setStringList("$_schoolyear/" + subjectNamesList[i] + "/Marks", SubjectsMarks[i]);
  }
}

void saveSubject(int _subjectIndex) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final _now = DateTime.now();
  bool firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) firsthalf = true;
  String _schoolyear;

  if(firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
  else _schoolyear = (_now.year + 1).toString() + "/" + _now.year.toString();

  prefs.setStringList("$_schoolyear/" + subjectNamesList[_subjectIndex] + "/Events", SubjectsEvents[_subjectIndex]);
  prefs.setStringList("$_schoolyear/" + subjectNamesList[_subjectIndex] + "/Marks", SubjectsMarks[_subjectIndex]);
}

void SaveSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("subjectList", subjectNamesList!);
}

void LoadSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  subjectNamesList = prefs.getStringList("subjectList")!;
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