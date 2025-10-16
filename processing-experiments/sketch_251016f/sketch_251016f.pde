int x = 50;
int y = 100;
int rSize = 40;
int srSize = 20;
float sizeConstant = 1.000001;
float spaceConstant = 2;

void largeRect(float offsetX, int kV) {
  rect(offsetX, y, rSize, rSize);
}

void smallRect(float offsetX, int kV) {
  rect(offsetX, y - srSize / 2 + rSize / 4, srSize / (kV * sizeConstant), srSize / (kV * sizeConstant));
}

void semiCircle(float offsetX, int kV) {
  float semiY = y - rSize / 2; 
  arc(offsetX, semiY, rSize, rSize, PI, PI * 2);
}

void setup() {
  size(400, 200);
  rectMode(CENTER);
  stroke(0);

  float spacing = rSize * spaceConstant;
  for (int i = 0; i < 4; i++) {
    float offsetX = x + i * spacing;
    semiCircle(offsetX, i + 1);
    largeRect(offsetX, i + 1);
    smallRect(offsetX, i + 1);
  }
}
