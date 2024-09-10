class Readfile {
  // Attributer
  Question[] questions=new Question[10];

  // Konstruktører
  Readfile() {
  }
  // Metoder
  void  getReadfile() {
    String[] lines;
    lines = loadStrings("questions.csv");
    for (int i=0; i< lines.length; i++) {
      String[] list = split(lines[i], ',');
      questions[i]=new Question(int(list[0]), list[1], list[2], int(list[3]));
    }
  }

  Question[] getAll() {
    return questions;
  }

  void printAll() {
    // The second is using an enhanced loop:
    for (Question quest : questions) {
      println(quest.getQuestion());
    }
  }
}
