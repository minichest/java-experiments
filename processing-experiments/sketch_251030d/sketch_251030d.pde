class Shape {
  int x;
  int y;
  int dX;

  void drawShape() {
    ellipse(x, y, 20, 20);
    rectMode(CENTER);
    rect(x, y+10, 20, 20);
  }

  void move(int speed, int end) {
    if (x < end) {
      x = x + speed;
    } else if (x > end) {
      x = x - speed;
    }
  }
}

// New Shapes
Shape shape1;
Shape shape2;

void setup() {
  size(200, 200);

  // Shape 1
  shape1 = new Shape();
  shape1.x = 20;
  shape1.y = 30;
  shape1.dX = 3;

  // Shape 2

  shape2 = new Shape();
  shape2.x = 170;
  shape2.y = 170;
  shape2.dX = 5;
}

void draw () {
  shape1.drawShape();
  shape2.drawShape();
  shape1.move(shape1.dX, 170);
  shape2.move(shape2.dX, 20);
}
