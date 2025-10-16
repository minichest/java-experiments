void numberBox(int value, int key) {
  fill(200, 200, 200);
  rect (50+(key*20), 50, 20, 20);
  fill(0, 0,0);
  text(value, 53+(key*20), 65);
}

void setup () {
  size(200, 200);
  
  for(int i=0; i<4; i++) {
    numberBox(10, i);
  }
}
