 class Bacterium
 {
  float x;
  float y;
  float size;
  color bacteriumColor;
  Bacterium() {
   bacteriumColor = getRandomColor();
   x = width / 2;
   y = height / 2;
   size = 20.0;
  }
  void show() {
    fill(bacteriumColor);
    ellipse(x, y, size, size);
  }
  void tick(float foodX, float foodY) {
    float xDiff = foodX - x;
    float yDiff = foodY - y;
    
    x += (xDiff * 0.01) + ((int)(Math.random() * 7) - 3);
    y += (yDiff * 0.01) + ((int)(Math.random() * 7) - 3);
    show();
  }
 }
