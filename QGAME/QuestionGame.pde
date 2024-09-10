Readfile readfile=new Readfile();
Question[] questions=new Question[10];
String screenText="";
int ID=0;

void setup() {
  size(1200, 800);
  textSize(100);
  fill(0, 0, 0);
  readfile.getReadfile();
  questions=readfile.getAll();
}


void draw() {
  background(22, 224, 227);
  text(screenText, 200, 400);
}

void keyPressed() {
  println(key);
  if (key == 32) {
    screenText=questions[ID].getQuestion();
  } else if (key =='c') {
    screenText=questions[ID].getAnswer();
    ID++;
  }
  if (ID=9) {
    ID=0;
  } else {
    key = 0;
  }
}
