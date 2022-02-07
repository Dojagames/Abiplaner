class Subject {

  String name;
  var marksExams = List<int>.empty();
  var marksTests = List<int>.empty();
  double ratio = 0.5; // ratio for exams, test ratio is 1 - exam ratio

  Subject(this.name);
  
  String getName() {
    return name;
  }
  
  List<int> getMarks() {
    return marksExams + marksTests;
  }

  List<int> getExams() {
    return marksExams;
  }

  List<int> getTests() {
    return marksTests;
  }
  
  double getAvg() {
    return getExamAvg() * ratio + getTestAvg() * (1 - ratio);
  }
  
  double getExamAvg() {
    int _sum = 0;
    marksExams.forEach((element) {_sum += element;});
    return _sum / marksExams.length;
  }

  double getTestAvg() {
    int _sum = 0;
    marksTests.forEach((element) {_sum += element;});
    return _sum / marksTests.length;
  }
  
  setName(String _name) {
    this.name = _name;
  }

  addExam(int _exam) {
    marksExams.add(_exam);
  }

  addTest(int _test) {
    marksTests.add(_test);
  }
  
  setRatio(double _ratio) {
    this.ratio = _ratio;
  }
}