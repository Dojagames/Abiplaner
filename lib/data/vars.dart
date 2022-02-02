import 'package:abiplaner/data/Subject.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Subject> _subjects = List.empty();
int selectedTheme = 0;




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

addSubject(Subject subject) {
	_subjects.add(subject);
}

removeSubject(int location) {
  _subjects.removeAt(location);
}