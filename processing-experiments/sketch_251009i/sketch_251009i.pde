int x = 100;
int y = 100;

size(200,200);

for(int i=0; i < width+10 ; i=i+10) {
  line(i,0,width / 2, height / 2);
  line(i,height,width / 2, height / 2);
}
