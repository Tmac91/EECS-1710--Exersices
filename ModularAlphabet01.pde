//Credit for start: https://discourse.processing.org/t/get-random-letters-and-put-into-a-string/28585/10
String result = "";

void setup() {
  size(600, 400);
  background(100);
  
  for (int y = 0; y < 26; y = y + 1) {
    result += char (int(random (65, 65+24)));
  }
}
void draw() {
  text(result, 100, 100);
}
