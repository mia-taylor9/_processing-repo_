//cat drawing moves when moving the mouse 
//when a key is pressed the expression of the cat changes
//mouse is a laser

PImage img;
PImage img2;
PImage img3; 
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;

float x;
float y;
float easing = 0.04;

void setup () {
 size (700, 700);
 img = loadImage("cat.png");
 img2 = loadImage("cat 2.png");
 img3 = loadImage("cat 3.png");
 img4 = loadImage("cat 4.png");
 img5 = loadImage("cat 5.png");
 img6 = loadImage("cat 6.png");
 img7 = loadImage("cat 7.png");
 img8 = loadImage("cat 8.png");
 img9 = loadImage("cat 9.png");
 img10 = loadImage("cat 10.png");
 img11 = loadImage("laser.png");
 
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
   if (key == 'g' || key == 'G'){
     image (img6, x, y);
   }
   if (key == 'h' || key == 'H'){
     image (img7, x, y);
   }
   if (key == 'j' || key == 'J'){
     image (img8, x, y);
   }
   if (key == 'k' || key == 'K'){
     image (img9, x, y);
   }
   if (key == 'l' || key == 'L'){
     image (img10, x, y);
   }
   } else {
     image (img, x, y);
   }
   
   if (mouseX < 50) {
     cursor(img11);
   }
}
