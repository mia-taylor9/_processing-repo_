//cat drawing moves when moving the mouse 
//when a key is pressed the expression of the cat changes

PImage img;
PImage img2;
PImage img3; 
PImage img4;
PImage img5;

float x;
float y;
float easing = 0.04;

void setup () {
 size (600, 600);
 img = loadImage("cat.png");
 img2 = loadImage("cat 2.png");
 img3 = loadImage("cat 3.png");
 img4 = loadImage("cat 4.png");
 img5 = loadImage("cat 5.png");
}

void draw () {
 background(#E8AA59);
 
 float targetX = mouseX;
 float dx = targetX - x;
 x += dx * easing; 
 
 float targetY = mouseY;
 float dy = targetY - y;
 y += dy * easing;
   
   if (keyPressed) {
    if (key == 'a' || key == 'A'){
      image (img2, x, y);
   }
   if (key == 's' || key == 'S'){
     image (img3, x, y);
    }
   if (key == 'd' || key == 'D'){
     image (img4, x, y);
   }
   if (key == 'f' || key == 'F'){
     image (img5, x, y);
   }
   } else {
     image (img, x, y);
   }
}
