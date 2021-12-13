PImage view;
int space = 4;

void setup(){
  view = loadImage("Beach.jpg");
  size(640, 639);
}

void draw(){
  for (int x = space; x < width; x+= space) {
    for (int y = space; y < height; y+= space) {
      color b = view.get(x, y);
      fill(b);
      noStroke();
      ellipse(x, y, space * 0.7, space * 0.7);
    }
  }
}
