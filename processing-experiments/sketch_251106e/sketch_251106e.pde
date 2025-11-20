// Alien

color ALIEN1 = color(0,255,0); // bright green
color ALIEN2 = color(50,100,0); // dark green
class Alien
{
  // members
  int x;
  int y;
  int speedX = 2;

  // constructor
  Alien(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void render() {
    //draw an alien
    fill(ALIEN1);
    ellipse(x, y, 30, 30);
    fill(ALIEN2);
    ellipse(x, y, 50, 15);
  }
  
  void move(){
     x = x - speedX; 
     y -= (int) random(-3, 3);
     if (x<0){
       x = width;
     }
  }
  void update()
  {
    move();
    render();
  }
}

// Defender
class Defender {
  int x;
  int y;
  int dX = 4;
  color colour;

  Defender(int x, int y, color col) {
    this.x = x;
    this.y = y;
    this.colour = col;
  }

  void render() {
    noStroke();
    fill(colour);
    rect(x, y, 100, 50);
    rect(x + 40, y - 40, 20, 40);
  }

  void move() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) x -= 10;
        if (keyCode == RIGHT) x += 10;
      }
    }

    x = constrain(x, 0, width - 100);
  }
}

// Bullet
class Bullet {
  int x;
  int y;
  color colour;
  boolean active = false;

  Bullet(int x, int y, color col) {
    this.x = x;
    this.y = y;
    this.colour = col;
  }

  void render() {
    if (active && y > 30) {
      fill(colour);
      rect(x + 40, y - 20, 20, 40);
    }
  }

  void move() {
    // Fire bullet
    if (keyPressed && key == ' ') {
      active = true;
    }

    // Move upward when active
    if (active) {
      y -= 10;
      if (y < 30) {
        active = false; // reset when reaching top
      }
    }

    // Follow defender when inactive
    if (!active) {
      x = defender1.x;
      y = defender1.y;
    }

    y = constrain(y, 30, height - 30);
  }
}

// Game setup
Defender defender1 = new Defender(200, 280, color(2, 78, 42));
Bullet bullet1 = new Bullet(200, 140, color(150, 150, 0));
Alien alien1 = new Alien(100,100, color (0, 0, 240));

void setup() {
  size(800, 400);
}

void draw() {
  background(129);
  defender1.move();
  bullet1.move();
  defender1.render();
  bullet1.render();
}
