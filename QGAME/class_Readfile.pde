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
    for(int i=0;i< lines.length; i++) {
      String[] list = split(lines[i], ',');
      printArray(list);
    }
  }
}
