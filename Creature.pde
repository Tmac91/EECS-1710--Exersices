PImage joe1, joe2, joeCurrent, attic, spider;
PVector position, target;
boolean isScared = false;
Float tooClose;
Float mSpeed = 0.08;

void setup() {
  size (600, 400, P2D);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  joe1 = loadImage("joe1.png");
  joe2 = loadImage("joe2.png");
  attic = loadImage("attic.jpg");
  spider = loadImage("spider.png");
  joeCurrent = joe1
  
  imageMode(CENTER);
}

void draw() {
  cursor(spider);
  background(attic);
  image(joeCurrent, position.x, position.y);
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isScared = position.dist(mousePos) < tooClose;
  
  if (isScared) {
    joeCurrent = joe2;
    
  }
  
