PImage joe1, joe2, joeCurrent, attic, spider;
PVector position, target;
boolean isScared = false;
Float tooClose1 = 75.0;
Float mSpeed = 0.08;

void setup() {
  size (600, 400, P2D);
  frameRate(60);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  joe1 = loadImage("joe1.png");
  joe2 = loadImage("joe2.png");
  attic = loadImage("attic.jpg");
  spider = loadImage("spider.png");
  joeCurrent = joe1;
  
  imageMode(CENTER);
}

void draw() {
  cursor(spider);
  background(attic);
  
  PVector mousePos = new PVector(mouseX, mouseY); 
  isScared = position.dist(mousePos) < tooClose1;
  
  if (isScared) {
    joeCurrent = joe2;
    position = position.lerp(target, 0.08);
    if (position.dist(target) < 25) {
      target = new PVector(random(width), random(height));
    } else  {
      isScared = position.dist(mousePos) > tooClose1;
      joeCurrent = joe1;
      
    }
    }
    image(joeCurrent, position.x, position.y);
    
    surface.setTitle("" + frameRate);
  }
