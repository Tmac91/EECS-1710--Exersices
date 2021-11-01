Timer startTimer;
int cookieX;
int cookieY;
int yourScore;
PImage cookie;

void setup() {
  size(400, 400, P2D);
  startTimer = new Timer(30);
  cookie = loadImage("cookie.png");
  yourScore = 0;

}

void draw() 
{
  background(100);
  image(cookie, cookieX, cookieY, 400, 400);
  textSize(30);
  text(yourScore, 330, 50);
  fill(0,0,0);
  startTimer.countDown();
  fill(0);
  textSize(20);
  text(startTimer.getTime(),10, 50);
  textSize(14.3);
  text("How many times can you click the cookie in 30 seconds?",5,390);
}
 

void mousePressed() 
{
  if (mouseX > cookieX && mouseX < cookieX + 400 && mouseY > cookieY && mouseY < cookieY + 400) //Credit: https://openprocessing.org/sketch/577283/
  { 
    yourScore++;
  } 
}
