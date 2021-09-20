color bgColor = color(255, 255, 255);
float circleSize = 25;

void setup() {
  size(800, 800, P2D); // P2D enables 2D GPU acceleration
  background(bgColor);
}

void draw() {  
  if (mousePressed) {
    rectMode(CENTER);
    fill(0, 0, 0);
    stroke(0, 0, 0);
    ellipse(mouseX, mouseY, circleSize, circleSize);
  }   
}
void keyPressed() {
  if (keyPressed) {
    background(bgColor);
  }
}
    
