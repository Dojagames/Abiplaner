import 'package:abiplaner/data/Subject.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Themes.dart';

//common
List<Subject> subjects = List.empty();
int selectedTheme = Themes.DARKBLUE.index;
String username = "User";
int maxHours = 9;
int lengthOfLesson = 45;
List<double> Unterrichtszeiten = [
  8, 8.75, 9.75, 10.50, 11.75, 12.50, 13.75, 14.50, 15.75
];

//spacings Home
double tableWidthSpacing = 35;

//Home Vars
int subCount = subjectSchedule[0].length + subjectSchedule[1].length +subjectSchedule[2].length +subjectSchedule[3].length +subjectSchedule[4].length;
final gridCount = List.generate(subCount -1, (index) => '$index');

//Timetable
List<List<String>> subjectSchedule = [
  ["Mu", "Mu", "Frz", "Frz", "Ph", "Ph", "Ma", "", ""],
  ["Eng", "Eng", "Inf", "Inf", "Ma", "Ma", "De", "", ""],
  ["Sozi", "Sozi", "Eng", "Eng", "Eth", "Eth", "", "", ""],
  ["Ma", "Ma", "De", "De", "Ge", "Ge", "Inf", "", ""],
  ["Ku", "Ku", "Sozi", "Sozi", "Ph", "Ph", "Frz", "", ""],
];

//Events / Marks
List<String> subjectNamesList = [];
List<String> pastYears = [];
List<List<String>> pastSubjects = [];
List<List<String>> SubjectsEvents = [];
List<List<String>> SubjectsMarks = [];


void loadAll() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _schoolyear = Schoolyear();

  for(int i = 0; i < subjectNamesList.length; i++){
    List<String> _bufferEvents = prefs.getStringList("$_schoolyear/" + subjectNamesList[i] + "/Events")!;
    SubjectsEvents.add(_bufferEvents);
    List<String> _bufferMarks = prefs.getStringList("$_schoolyear/" + subjectNamesList[i] + "/Marks")!;
    SubjectsMarks.add(_bufferMarks);
  }
}

void saveAll() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _schoolyear = Schoolyear();
  for(int i = 0; i < subjectNamesList.length; i++){
    await prefs.setStringList("$_schoolyear/" + subjectNamesList[i] + "/Events", SubjectsEvents[i]);
    await prefs.setStringList("$_schoolyear/" + subjectNamesList[i] + "/Marks", SubjectsMarks[i]);
  }
}

void saveSubject(int _subjectIndex) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _schoolyear = Schoolyear();
  await prefs.setStringList("$_schoolyear/" + subjectNamesList[_subjectIndex] + "/Events", SubjectsEvents[_subjectIndex]);
  await prefs.setStringList("$_schoolyear/" + subjectNamesList[_subjectIndex] + "/Marks", SubjectsMarks[_subjectIndex]);
}

void SaveSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _schoolyear = Schoolyear();
  await prefs.setStringList("subjectList/$_schoolyear", subjectNamesList);
}

void LoadSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _schoolyear = Schoolyear();
  subjectNamesList = prefs.getStringList("subjectList/$_schoolyear")!;
}


String Schoolyear(){
  final _now = DateTime.now();
  bool _firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) _firsthalf = true;
  String _schoolyear;

  if(_firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
  else _schoolyear = (_now.year + 1).toString() + "/" + _now.year.toString();

  return _schoolyear;
}

SavePastYears() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setStringList("PastYears", pastYears);
}

LoadPastYears() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  pastYears = prefs.getStringList("PastYears")!;
}

SavePastSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  for(int i = 0; i < pastYears.length; i++){
    await prefs.setStringList(pastYears[i] + "Subjects", pastSubjects[i]);
  }
}

LoadPastSubjects() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  for(int i = 0; i < pastYears.length; i++){
    pastSubjects[i] = prefs.getStringList(pastYears[i] + "Subjects")!;
  }
}


getSubject(int _location) {
  return subjects.elementAt(_location);
}

getSubjects() {
  return subjects;
}

setTheme(Themes _theme) {
  selectedTheme = _theme.index;
}

loadTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  selectedTheme = prefs.getInt("selectedTheme")!;

}

saveTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt("selectedTheme", selectedTheme);
}

addSubject(Subject _subject) {
	subjects.add(_subject);
}

removeSubject(int _location) {
  subjects.removeAt(_location);
}