float noiseScale = 0.05;
float noiseScale2 = 0.02;
int count = 0;
void setup() {
  size(700, 500);
  background(255);
  noStroke();
}
void draw() {
  background(255);

  for (int x = 0; x <= width; x = x + width / 20 ) {
    for (int y = 0; y <= height; y = y + height / 15) {
      float noiseVal = noise(x*noiseScale, y*noiseScale); 
      float noiseVal2 = noise(x*noiseScale2, y*noiseScale2);

      //strokeWeight(noiseVal);
      ellipseMode(RADIUS);
      fill(137, 207, 240);
      ellipse(x, y, noiseVal*20, noiseVal*20);
      fill(244, 194, 194, noiseVal2*300);
      ellipse(x, y, noiseVal*20, noiseVal*20);
      //point(x, y);
      //print(x, y);
      if (count<255) {
        count ++;
      } else {
        count = 0; 
      }
    }
  }
}
