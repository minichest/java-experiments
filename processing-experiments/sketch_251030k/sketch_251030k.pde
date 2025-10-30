final color RED = color(255, 0, 0);  //constant: a variable with fixed value
final color BLUE = color(0, 0, 255);
int max = 450;
int x;  //DATA MEMBERS : collection of variables that represent this
int y;
int speed;
int size;
color colour;

class Motorbike
{
  //METHODS: functions an object of this type can perform

  int y;
  int speed;
  int size;
  color colour;
  int x;

  Motorbike(int y, color col) { //constructor
    this.y = y;
    this.speed = (int)random(5.0);
    this.colour = col;
    this.x = 5;  //DATA MEMBERS : collection of variables that represent this
    this.size = 30;
  }

  void display()
  {
    float wheelHeight = size/3;
    fill(colour);
    triangle(x, y, x+size, y, x+size/2, y-size/2);  //built-in triangle routine
    drawWheel(x, y, wheelHeight);
    drawWheel(x+size, y, wheelHeight);
  }

  void drawWheel(int x, int y, float size)
  {
    float inner = size*2/3;
    fill(0);
    ellipse(x, y, size, size);
    fill(255);
    ellipse(x, y, inner, inner);
  }

  void move() {
    x = x + speed;
  }
  
  boolean finished(int finishLine) {
    if(speed>0) {
      return x >= finishLine;
    } else {
      return x <= finishLine;
    }
  }
} //end of class description

Motorbike motorbike1 = new Motorbike(40, color(255, 0, 0));
Motorbike motorbike2 = new Motorbike(70, color(0, 0, 255));

void setup() {
  size(500, 100);

  /* 
  Motorbike 1
  motorbike1 = new Motorbike();
  motorbike1.colour = RED;
  motorbike1.y = 40;
  motorbike1.speed=2;
  motorbike1.size=30;

  Motorbike 2
  motorbike2 = new Motorbike();
  motorbike2.colour = BLUE;
  motorbike2.y = 70;
  motorbike2.speed=1;
  motorbike2.size=30; */
}

void draw()
{
  background(125);
  motorbike1.display();
  motorbike2.display();
  
  if (motorbike1.finished(460) == false) {
    motorbike1.move();
  } else {
    motorbike1.x = 460;
  }
  
  if (motorbike2.finished(460) == false) {
    motorbike2.move();
  } else {
    motorbike2.x = 460;
  }
}
