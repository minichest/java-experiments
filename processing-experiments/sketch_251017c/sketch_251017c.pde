void setup() {
  size(480, 320);
  noLoop();
}

void draw() {
  int cols = 8;
  int rows = 6;
  int w = width / cols;
  int h = height / rows;
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      fill(random(255), random(255), random(255));
      rect(c * w, r * h, w, h);
    }
  }
}