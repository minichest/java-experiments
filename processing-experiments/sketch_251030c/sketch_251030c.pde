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
Shape shape3;
Shape shape4;

void setup() {
  size(200,200);
  
  // Shape 1
  shape1 = new Shape();
  shape1.x = 20;
  shape1.y = 20;
  
  // Shape 2
  
  shape2 = new Shape();
  shape2.x = 170;
  shape2.y = 170;
  
  // Shape 2
  
  shape3 = new Shape();
  shape3.x = 20;
  shape3.y = 170;
  
  // Shape 4
  shape4 = new Shape();
  shape4.x = 170;
  shape4.y = 20;
}

void draw () {
  shape1.drawShape();
  shape2.drawShape();
  shape3.drawShape();
  shape4.drawShape();
}
