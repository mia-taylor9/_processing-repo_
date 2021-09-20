PImage img1;
PImage img2;

void setup() {
 size(900,600);
 img1 = loadImage("cat1.png");
 img2 = loadImage("cat2.png");
}

void draw() {
 if (mousePressed) {
   image (img2, mouseX, mouseY); 
 } else {
 image (img1, mouseX, mouseY);
 }
 
}
