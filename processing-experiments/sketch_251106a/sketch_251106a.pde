// alien sketch gonna be here

color ALIEN1 = color(0,255,0); // bright green
color ALIEN2 = color(50,100,0); // dark green
class Alien
{
  // members
  int x;
  int y;
  int speedX = 2;

  // constructor
  Alien(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void render() {
    //draw an alien
    fill(ALIEN1);
    ellipse(x, y, 30, 30);
    fill(ALIEN2);
    ellipse(x, y, 50, 15);
  }
  
  void move(){
     x = x - speedX; 
     y -= (int) random(-3, 3);
     if (x<0){
       x = width;
     }
  }
  void update()
  {
    move();
    render();
  }
}

void setup(){
  size(800, 400);  
  // create each element of array here
}

void draw(){
  background(0);
  // update each element of array here
}
