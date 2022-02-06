import 'package:abiplaner/data/Subject.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Themes.dart';

List<Subject> _subjects = List.empty();
int selectedTheme = Themes.DARKBLUE.index;
String username = "User";
int maxHours = 7;
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
  bool firsthalf = false;
  int _Ferienende = 6; //get month of the end of summer vacation
  if(_now.month >= _Ferienende) firsthalf = true;
  String _schoolyear;

  if(firsthalf) _schoolyear = _now.year.toString() + "/" + (_now.year + 1).toString();
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


getSubject(int location) {
  return _subjects.elementAt(location);
}

getSubjects() {
  return _subjects;
}

setTheme(Themes theme) {
  selectedTheme = theme.index;
}

loadTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    selectedTheme = int.tryParse(prefs.getString("selectedTheme")!) ?? 0;
  }
  on Exception catch (_, e) {
    selectedTheme = 0;
  }
}

saveTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("selectedTheme", selectedTheme.toString());
}

addSubject(Subject subject) {
	_subjects.add(subject);
}

removeSubject(int location) {
  _subjects.removeAt(location);
}