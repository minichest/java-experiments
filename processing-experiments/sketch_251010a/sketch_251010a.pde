// horizontal circle lines

// repeat 10
  // select  a colour
  // draw circle
  // move right a bit
  
size(300,100);
  
for(int i=0; i < 10; i++) {
  if (i % 2 == 0) {
    fill(255,0,0);
    ellipse(10+(20*i), 10, 15,15);
  } else {
    fill(0,0,255);
    ellipse(10+(20*i), 10, 15,15);
  }
}
