float x = 35; // x var
float y = 30; // y var
float diameter = 60; // diameter

for (int i=0; i<5; i++) {
  fill(0,0,255);
  ellipse(x, y, diameter, diameter);
  fill(255,255,255);
  ellipse(x,y,(diameter * 2/3), (diameter * 2/3));
  fill(255,0,0);
  ellipse(x,y, diameter/3, diameter/3);
}

x = x + 60;
