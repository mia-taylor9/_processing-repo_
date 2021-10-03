// for this extra project i wanted to learn how to move an image that follows the mosuse 
// I wanted to use the things i learned for this extra project for my final but make my final more complex 
// I also learned how to use mouse pressed 
// My main thing was to learn how to use my own images than a simple shape 
// https://processing.org/examples/easing.html
// https://processing.org/reference/PImage.html
// https://www.youtube.com/watch?v=UvSjtiW-RH8 (mouse pressed) 


PImage img; // create a varriable for the images i want to use
PImage img2;

float x; // create a varriable for the image to follow the mouse 
float y;
float easing = 0.04;

void setup () { // create the canvas and load the images in from my file 
 size (500, 500);
 img = loadImage("noddle-cat.png");
 img2 = loadImage("food-cat.png");
}

void draw() { // with the code i learned the image should follow the mouse and the image changes when the mouse is pressed 
  background(255);
  
  
  float targetX = mouseX; 
  float dx = targetX - x;
  x += dx * easing;
 
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
   
  
  if (mousePressed) {
    image (img2, x, y);
  } else {
    image (img, x, y);
  }
}
