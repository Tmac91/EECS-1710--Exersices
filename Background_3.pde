PImage person;
color blue = color(51, 153, 255);
color green = color(0, 255,0);
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800, 600, P2D);
  person = loadImage("Riley.jpg");
  person.resize(person.width * (height / person.height), height);
  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 50;
  y2= y1 - 50;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
}

void draw() {
  background(blue);
  rect(0, 500, 800, 100);
  fill(green);
  stroke(green);
  
  image(person, x1, y1);
  
  x1 += speedX1;
  
  if (x1 > width || x1 <0) {
    speedX1 *= -1;
  }
}
