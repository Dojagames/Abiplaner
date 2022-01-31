class Subject {

  String name;
  var marks_exams = List<int>.empty();
  var marks_tests = List<int>.empty();

  Subject(this.name);

  List<int> getExams() {
    return this.marks_exams;
  }

  List<int> getTests() {
    return this.marks_tests;
  }

  addExam(int exam) {
    this.marks_exams.add(exam);
  }

  addTest(int test) {
    this.marks_tests.add(test);
  }
}