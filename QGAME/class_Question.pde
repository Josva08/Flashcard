class Question {
  // Attributer
  int ID;
  String question;
  String answer;
  int level;

  // Konstruktør
  Question(int ID, String question, String answer, int level) {
    this.ID=ID;
    this.question=question;
    this.answer=answer;
    this.level=level;
  }
  // Metoder
  String getQuestion() {
    return this.question;
  }
  String getAnswer() {
    return this.answer;
  }
  int getLevel() {
    return this.level;
  }
}
