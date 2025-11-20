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
        if (keyCode == UP) y -= 10;
        if (keyCode == DOWN) y += 10;
      }
    }

    x = constrain(x, 0, width - 100);
    y = constrain(y, 30, height - 50);
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
Defender defender1 = new Defender(200, 200, color(2, 78, 42));
Bullet bullet1 = new Bullet(200, 140, color(150, 150, 0));

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
