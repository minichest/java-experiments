int x = 10; // x
int y = 10; // y
int size = 15; // circle size
int common = 20; // line multiplier

size(200,200);

/* for(int i=0; i < 10; i=i+1) {
  ellipse(x,y+i*common,size,size);
  ellipse(x+i+size,y+i*common,size,size);
  line(x,y+i*common,x+size+i,y+i*common);
} */

for(int m=10; m < width; m=m+50) { // each column 
  for(int i=0; i < 10; i=i+1) { // each row
    ellipse(m,y+i*common,size,size); // circle 1
    ellipse(m+i+size,y+i*common,size,size); // circle 2
    line(m,y+i*common,m+size+i,y+i*common); // line
  }
}
