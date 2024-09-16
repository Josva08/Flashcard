Readfile readfile=new Readfile();
Question[] questions=new Question[10];
String screenText="";
int ID=0;

void setup() {
  size(1200, 800);
  fill(255);
  readfile.getReadfile();
  questions=readfile.getAll();
}


void draw() {
  background(50);
  textSize(30);
  text(screenText, 100, 300);
  textSize(25);
  text("Tryk på Mellemrum for at få et spørgsmål",100,670);
  text("Tryk på C for at få svaret",100,700);
}
boolean questionShown = false;
//Kode fra Chat, der fikser svar problemet
void keyPressed() {
  //println(key);
  if (key == 32) { // Space key pressed
    screenText = questions[ID].getQuestion();
    questionShown = true; // Mark that a question has been shown
  } else if (key == 'c') { // 'c' key pressed
    if (questionShown) { // Only show answer if a question has been shown
      screenText = questions[ID].getAnswer();
      ID++;
      if (ID > 9) {
        ID = 0;
      }
      questionShown = false; // Reset flag after showing answer
    }
  } else {
    key = 0;
  }
}

//original kode
/*
void keyPressed() {
  //println(key);
  if (key == 32) {
    screenText=questions[ID].getQuestion();
  } else if (key =='c') {
    screenText=questions[ID].getAnswer();
    ID++;
    if (ID>9)
      ID=0;
    } else {
    key = 0;
  }
}*/
