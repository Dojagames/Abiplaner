import 'package:abiplaner/data/Subject.dart';

List<Subject> _subjects = List.empty();

loadData() {
	if (_subjects.isEmpty) {

	}
}

saveData() {
	if (_subjects.isNotEmpty)   {

	}
}

getSubject(int location) {
  return _subjects.elementAt(location);
}

addSubject(Subject subject) {
	_subjects.add(subject);
}

removeSubject(int location) {
  _subjects.removeAt(location);
}