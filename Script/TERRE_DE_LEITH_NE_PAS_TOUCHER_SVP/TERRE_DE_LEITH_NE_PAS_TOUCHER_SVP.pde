     PImage terre;

import processing.serial.*; 
 Serial myPort;
 
void setup() {
  printArray(Serial.list()); //permet de lister les ports série de l'ordinateur
myPort = new Serial(this, Serial.list()[1], 9600);
  size(650, 360);
  terre = loadImage("terreTransparent.png");
  ellipseMode(CORNER);  //
  rectMode(CENTER);
  fill(255,0,0);
  background(0,0,0);
  textSize(16);
  text("Créez la lumière en activant le capteur de lumière devant vous.", 70, 30);
}

void draw() {
 
  while (myPort.available()>0) //Returns the number of bytes available
    {   
    int inByte = myPort.read();
    println(inByte);
    if(inByte==50){
      
   background(0,0,0);
   fill(255,0,0);
   ellipse(200,50,250,250);
    
    }

}
  }


  
void keyPressed() {
  if (key == 'a') {
   background(0,0,0);
   fill(26,214,80);
   ellipse(200,50,250,250);
   textSize(16);
  text("Créez l'eau en versant de l'eau dans la terre à votre gauche.", 70, 30);
    }
    else if (key=='b'){  
       fill(0,10,255);
    background(0,0,0);
    ellipse(200,50,250,250);
    image(terre,200,50,250,250);
    
    }
      
      
     
  }
           

    


 
  