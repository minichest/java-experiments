//column of circles down the screen

int y = 20;
int x = 50;

size(200, 200); // screen size

while (y <= 200) {
  ellipse(x, y, 20, 20);
  y = y + 20;
}

 
//repeat while haven't got to the bottom of screen
   //circle - at x and y value
   //move down a bit - increase y value
