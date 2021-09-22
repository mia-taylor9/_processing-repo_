PImage img;
PImage img2;

float x;
float y;
float easing = 0.04;

void setup () {
 size (500, 500);
 img = loadImage("noddle-cat.png");
 img2 = loadImage("food-cat.png");
}

void draw() {
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
