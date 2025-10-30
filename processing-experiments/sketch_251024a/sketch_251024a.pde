PImage image1,image2,image3;     //creates 3 variables to store an image files -a Class
int birdX, birdY;
int imageCounter=0;
 
void setup()  //code runs once at the start - initialise things
{
   size(500,500);
   image1 = loadImage("bird1.jpg");   //loads an image from file and stores in the variable
   image1.resize(50,50);     //resize the image
   image2 = loadImage("bird2.jpg");   //loads an image from file and stores in the variable
   image2.resize(50,50);     //resize the image
   image3 = loadImage("bird3.jpg");   //loads an image from file and stores in the variable
   image3.resize(50,50);     //resize the image
   imageMode(CENTER); //draw images from centre position
   birdX = width/2;
   birdY = width/2;
}
 
void draw() //code is repeated 60 times per second - animate things
{
  background(200);
    //keep same image for 10 frames
  if(imageCounter >= 0 && imageCounter<10)
    image(image1, birdX, birdY);  //displays the image variable at an x,y
  else if (imageCounter >= 10 && imageCounter<20)
    image(image2, birdX,birdY);
  else if (imageCounter >= 20 && imageCounter<30)
    image(image3, birdX,birdY);
    imageCounter++;
    if (imageCounter>=30) //reset counter
       imageCounter=0;
}
