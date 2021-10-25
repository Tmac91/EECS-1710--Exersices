Timer startTimer;
int cookie1;
int cookie2;
int yourScore;
PImage cookie;

void setup() {
  size(400, 400, P2D);
  startTimer = new Timer(30);
  cookie = loadImage("cookie.png");
  yourScore = 0;

}

void draw() {
  background(100);
  image(cookie, cookie1, cookie2, 400, 400);
  textSize(50);
  text(yourScore, 10, 50);
  fill(0,0,0);
  startTimer.countDown();
  fill(0);
  textSize(20);
  text(startTimer.getTime(),300, 20);
  textSize(14.3);
  text("How many times can you click the cookie in 30 seconds?",5,390);
}
 

void mousePressed() {
  if (mouseX > cookie1 && mouseX < cookie1 + 400 && mouseY > cookie2 && mouseY < cookie2 + 400) { 
   yourScore++;
  }
  
}
