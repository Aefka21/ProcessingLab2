
void setup() {
  size(600, 600);
}

void draw() {
  int radius = 75, x = 300, y = 100, length = 75;
  drawHead(radius, x, y);
  drawFeet(x, y + radius / 2 + 8 * length / 6, 50, 20, 40);
  drawBody(x, y + radius / 2, length);
}

void drawHead(int radius, int x, int y) {
  fill(254, 222, 190);
  ellipse(x, y, radius, radius);
}

void drawBody(int x, int y, int length) {
  drawFirstPart(x, y, length);
  drawSecondPart(x, y + length * 6 / 5, length);
}

void drawFirstPart(int x, int y, int length) {
  fill(255, 26, 121);
  rect(x - length, y + length / 5, 2 * length, length);
  drawTruc(x, y, length);
}

void drawTruc(int x, int y, int length) {
  int offset = length / 2;
  fill(214, 0, 255);
  //rect(x + offset, y, -2 * offset, offset / 2);
  quad(x - offset, y, x - offset * 5 / 4, y + offset * 5 / 12, x, y + length / 2, x, y + offset / 2);
  quad(x + offset, y, x + offset * 5 / 4, y + offset * 5 / 12, x, y + length / 2, x, y + offset / 2);
}

void drawSecondPart(int x, int y, int length) {
  int offset = 50;
  fill(66, 197, 245);
  quad(x - offset, y, x - offset * 3 / 2 , y + length , x + offset * 3 / 2, y + length, x + offset, y);
}

void drawFeet(int x, int y, int offset, int width, int height) {
  fill(0);
  ellipse(x - offset, y + offset, width, height);
  ellipse(x + offset, y + offset, width, height);
}

void drawArms() {

}
