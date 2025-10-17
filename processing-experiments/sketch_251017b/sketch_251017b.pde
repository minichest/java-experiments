void setup() {
  size(400, 200);
  frameRate(60);
}

float x = 0;

void draw() {
  background(220);
  fill(100, 150, 240);
  ellipse(x, height/2, 50, 50);
  x += 2;
  if (x > width + 25) x = -25;
}