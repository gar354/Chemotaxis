// feel free to change these
int bacteriaAmount = 10;
// --

Bacterium[] Bacteria;
Food foodObject;

// utility functions
color getRandomColor() {
  float currentR = lerp(0.0, 255.0, (float)Math.random());
  float currentG = lerp(0.0, 255.0, (float)Math.random());
  float currentB = lerp(0.0, 255.0, (float)Math.random());
  return color(currentR, currentG, currentB);
}
// --

void setup() {
  size(500, 500);
  foodObject = new Food(100, 100);
  Bacteria = new Bacterium[bacteriaAmount];
  foodObject.show();
  for (int i = 0; i < bacteriaAmount; i++) {
    Bacteria[i] = new Bacterium();
  }
}


void draw() {
  background(255);
  for (int i = 0; i < bacteriaAmount; i++) {
    Bacteria[i].tick(foodObject.x, foodObject.y);
  }
  foodObject.show();
}


void mousePressed() {
  foodObject.x = mouseX;
  foodObject.y = mouseY;
  foodObject.show();
}
