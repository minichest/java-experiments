final color RED = color(255, 0, 0);  //constant: a variable with fixed value
final color BLUE = color(0, 0, 255);
int max = 450;

class Motorbike
{
  int x = 5;  //DATA MEMBERS : collection of variables that represent this
  int y;
  int speed=2;
  int size=30;
  color colour;

  //METHODS: functions an object of this type can perform
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
    if (x < max) {
      x = x + speed;
    }
  }
} //end of class description

Motorbike motorbike1;
Motorbike motorbike2;

void setup() {
  size(500, 100);

  // Motorbike 1
  motorbike1 = new Motorbike();
  motorbike1.colour = RED;
  motorbike1.y = 40;
  motorbike1.speed=2;
  motorbike1.size=30;
  
  // Motorbike 2 
  motorbike2 = new Motorbike();
  motorbike2.colour = BLUE;
  motorbike2.y = 70;
  motorbike2.speed=1;
  motorbike2.size=30;
}

void draw()
{
  background(125);
  motorbike1.display();
  motorbike2.display();
  motorbike1.move();
  motorbike2.move();
}
