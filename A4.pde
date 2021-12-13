import processing.sound.*;

SoundFile soundFile;
AudioIn in;
Amplitude amp;
PImage start;
float ampvalue = 0;
String path = "";
int startX;
int StartY;

void setup()
{
  size(1000, 600, P2D);
  
  path = "toby fox - UNDERTALE Soundtrack - 68 Death by Glamour.wav";
  soundFile = new SoundFile(this, path);
  in = new AudioIn(this, 0);
  amp = new Amplitude(this);
  start = loadImage("Start.png");
  
  in.start();
  amp.input(in);
  
}
int lasts = 0;
void draw()
{
 background(0, 0, 0);
 image(start, 100, 150);
 textSize(60);
 text("Please Press start to begin", 150,100);
 fill(255, 20, 147);
 
 textSize(60);
 text("Press any Key to Stop", 150, 575);
 fill(255, 20, 147);
}
 
void mousePressed()
{
  soundFile.play();
}
void keyPressed()
{
  soundFile.stop();
}
