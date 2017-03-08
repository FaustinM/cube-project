import processing.serial.*;

Serial port;

int val;

void setup() {
    String portName = Serial.list()[3];
    size(400, 400);
    noStroke();
    frameRate(10);
    port = new Serial(this, portName, 9600);
    
}

void dram() {
  if (0 < port.available()) {
    val = port.read();
      
  }
  background(0);
  fill(0,0,255);
  rect(val, 50, 100, 100);
}