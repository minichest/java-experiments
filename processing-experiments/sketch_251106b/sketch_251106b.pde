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
    rect(x+40, y-40, 20, 40);
  }

  void move() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          x = x - 50;
        }

        if (keyCode == RIGHT) {
          x = x + 50;
        }
        
        if (keyCode == UP) {
          y = y - 25;
        }

        if (keyCode == DOWN) {
          y = y + 25;
        }
      }
    }
    
    x = constrain(x, 0, width - 100);
    y = constrain(y, 30, height - 50);
  }
}

  Defender defender1 = new Defender(200, 200, color(2, 78, 42));
  // Defender defender2 = new Defender(400, 200, color(2, 128, 42));

  void setup () {
    size(800, 400);
    background(129);
  }

  void draw() {
    background(129);
    defender1.render();
    defender1.move();
  }
