int size = 20;
int y = 25;
int x = 50;

/* void setup() {
  for(int x = 10; x<60; x=x+20) {
    for(int y = 20; y<60; y++) {
      triangle(x, y - size / 2, x - size / 2, y + size / 2, x + size / 2, y + size / 2);
    }
  }
} */

void setup() {
  for(int i=0; i<4; i++){
    triangle(x, y - size / 2, x - size / 2, y + size / 2, x + size / 2, y + size / 2);
    y = y + 20;
  }
}
