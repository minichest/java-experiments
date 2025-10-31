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
    if(imCounter >= 0 && imCounter<10) {
      image(img1, x, y);
    } else if(imCounter >= 10 && imCounter<20) {
      image(img2, x, y);
    } else if(imCounter >= 20 && imCounter<30) {
      image(img3, x, y);
    } else if(imCounter >= 30 && imCounter<40) {
      image(img4, x, y);
    }
    
    imCounter = imCounter + 1;
    
    if (imCounter >= 40) {
      imCounter = 0;
    }
  }
  
  void walk() {
    if (x < width - 100) {
      x = x + speedX;
    }
  }
  }
}

Walker walkman;
Walker walkman2;

void setup() {
  size(400,400);
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
