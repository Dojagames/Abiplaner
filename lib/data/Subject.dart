class Subject {

  String name;
  var marksExams = List<int>.empty();
  var marksTests = List<int>.empty();

  Subject(this.name);

  List<int> getExams() {
    return marksExams;
  }

  List<int> getTests() {
    return marksTests;
  }

  addExam(int exam) {
    marksExams.add(exam);
  }

  addTest(int test) {
    marksTests.add(test);
  }
}