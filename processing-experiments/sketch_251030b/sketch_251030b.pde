class Shape {
  int x;
  int y;
  
  void drawShape() {
    ellipse(x,y,20,20);
    rectMode(CENTER);
    rect(x,y+10,20,20);
  }
}

// New Shapes
Shape shape1;
Shape shape2;

void setup() {
  size(200,200);
  
  // Shape 1
  shape1 = new Shape();
  shape1.x = 20;
  shape1.y = 30;
  
  // Shape 2
  
  shape2 = new Shape();
  shape2.x = 60;
  shape2.y = 30;
}

void draw () {
  shape1.drawShape();
  shape2.drawShape();
}
