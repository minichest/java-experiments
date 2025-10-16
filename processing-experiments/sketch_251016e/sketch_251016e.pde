int x = 20;
int y = 50;
int size = 40;

void wheel(){
  for(int i=0; i<3; i=i+1){
    ellipse(x+(size*i),y,(size - i),(size - i));
    line(x+(size*i)-size/2,y,x+(size*i)+size/2,y);
    line(x+(size*i),y-size/2,x+(size*i),y+size/2);
  }
}

void setup() {
  size(300, 300);
  wheel();
}
