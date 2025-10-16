int x = 40;
int y = 50;
int gap = 80;

void largeWheels(int con) {
  fill(0);
  ellipse(x+(con*gap), y, 20, 20);
}

void smallWheels(int con) {
  fill(255);
  ellipse(x+(con*gap), y, 5, 5);
}


void setup(){
  size(200,200);
  for (int i=0; i<2; i++) {
    largeWheels(i);
    smallWheels(i);
  }
  
  line(x + (gap/6- 2), y, x + (gap - 10), y);
  stroke(52);
  strokeWeight(4);
  point(x+(gap/2), y/2);
  strokeWeight(1);
  line(x, y, x+(gap/2), y/2);
  line(x+(gap/2), y/2, x + (gap - 5), y);
}
