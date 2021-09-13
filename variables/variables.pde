
float brushTransparency; //declaring variable 
float brushColor = 255; //you can initialize vaules when you declase them
float brushSize = 10;

void setup(){
size(300,200); //initializing width and height
background(256, 0, 0);
brushTransparency = 50;//initialize varibale 
}

void draw (){
  //noStroke();
  brushColor = mouseX/2;
  stroke(brushColor*2, brushColor, 50, 20);
  strokeWeight(16); //thicker
  brushTransparency = mouseY/2; 
  brushSize = mouseX/10;
fill(#A5DAED, brushTransparency);
line(mouseX, mouseY, width-mouseY, height-mouseX);
ellipse(mouseX, mouseY, brushSize, brushSize);
}




/*
//comment 
stroke(200, 100, 50);
fill(#B4E8CC);
ellipse(width/3*2, 100, 50, 50);

stroke(200, 100, 50);
strokeWeight(16);
fill(#B1B4F0, 100);
rect(50, 150, width/2, 20);

line(50, 50, 250, 60);
line(width/2, height/2, width/2, height/2+height/3);
*/
