class Food
{
  float x;
  float y;
  float size;
  color foodColor;
  Food(float _x, float _y) {
    x = _x;
    y = _y;
    size = 30.0;
    foodColor = getRandomColor();
    show();
  }
  void show() {
    fill(foodColor);
    ellipse(x, y, size, size);
  }
}
