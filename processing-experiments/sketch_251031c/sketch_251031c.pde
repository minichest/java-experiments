class Walker {
  // 1. Data Members: variables
  int x, y;
  int speedX;
  PImage img1, img2, img3, img4;
  int imCounter = 0;

  // 2. Constructor: initialise data member variables
  Walker(int x, int y, int dx) {
    this.x = x;
    this.y = y;
    speedX = dx;

    img1 = loadImage("walk1.gif");
    img2 = loadImage("walk2.gif");
    img3 = loadImage("walk3.gif");
    img4 = loadImage("walk4.gif");
  }

  // 3. Methods: thing an object does - procedures or functions
  void display() {
    PImage currentFrame;

    // pick which frame to show based on imCounter
    if (imCounter < 10) currentFrame = img1;
    else if (imCounter < 20) currentFrame = img2;
    else if (imCounter < 30) currentFrame = img3;
    else currentFrame = img4;

    imCounter++;
    if (imCounter >= 40) imCounter = 0;

    // draw image facing correct direction
    pushMatrix();
    if (speedX < 0) {
      // facing left → flip horizontally
      scale(-1, 1);
      image(currentFrame, -x - currentFrame.width, y);
    } else {
      // facing right (normal)
      image(currentFrame, x, y);
    }
    popMatrix();
  }


  void walk() {
    x = x + speedX;

    // reverse direction at edges
    if (x > width - 100 || x < 0) {
      speedX = -speedX;
    }
  }
}

Walker walkman;
Walker walkman2;

void setup() {
  size(400, 400);
  walkman = new Walker(20, 20, 3);
  walkman2 = new Walker(20, 200, 5);
}

void draw() {
  background(255);
  walkman.display();
  walkman2.display();
  walkman.walk();
  walkman2.walk();
}
