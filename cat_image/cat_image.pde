PImage img; 

void setup() {
  size(600, 700);
  background(0);
  img = loadImage("mario.png");
}
void draw() {
  image(img, 0, 0);
}
