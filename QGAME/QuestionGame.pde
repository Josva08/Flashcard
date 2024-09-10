Readfile readfile=new Readfile();
Question[] questions=new Question[10];
String screenText="";
int ID=0;

void setup() {
  size(1200, 800);
  textSize(50);
  fill(0, 0, 0);
  readfile.getReadfile();
  questions=readfile.getAll();
}


void draw() {
  background(175, 0, 255);
  text(screenText, 100, 300);
}

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
}
