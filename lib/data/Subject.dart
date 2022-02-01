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
    int sum = 0;
    marksExams.forEach((element) {sum += element;});
    return sum / marksExams.length;
  }

  double getTestAvg() {
    int sum = 0;
    marksTests.forEach((element) {sum += element;});
    return sum / marksTests.length;
  }
  
  setName(String name) {
    this.name = name;
  }

  addExam(int exam) {
    marksExams.add(exam);
  }

  addTest(int test) {
    marksTests.add(test);
  }
  
  setRatio(double ratio) {
    this.ratio = ratio;
  }
}