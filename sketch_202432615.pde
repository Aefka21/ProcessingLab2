
void setup() {
  size(600, 600);
}

void draw() {
  int radius = 100, faceX = 300, faceY = 100;
  //drawHead(radius, faceX, faceY);
  drawBody(faceX, faceY + radius / 2);
}

void drawHead(int radius, int x, int y) {
  int offset = radius / 5;
  fill(254, 222, 190);
  ellipse(x, y, radius, radius);
  drawEyes(x, y, radius, offset);
  drawMouth(x, y, radius, offset);
  drawNose(x, y, offset / 4);
}

void drawNose(int x, int y, int offset) {
  fill(0, 0, 0, 0);
  int noseSize = 10;
  arc(x - offset, y, noseSize, noseSize, radians(90), radians(180));
  arc(x + offset, y, noseSize, noseSize, radians(0), radians(90));
  fill(0);
  ellipse(x - 9 * offset / 10, y + offset / 2, noseSize / 4, noseSize / 4);
  ellipse(x + 9 * offset / 10, y + offset / 2, noseSize / 4, noseSize / 4);
  stroke(0);
}

void drawMouth(int x, int y, int radiusFace, int offset) {
  bezier(x - offset, y + offset, x - offset, y + offset * 2, x + offset, y + offset * 2, x + offset, y + offset);
}

void drawEyes(int x, int y, int radiusFace, int offset) {
  int radius = 20;
  fill(255);
  ellipse(x - offset, y - offset, radius, radius);
  ellipse(x + offset, y - offset, radius, radius);
}

void drawBody(int x, int y) {
  int length = 75;
  drawFirstPart(x, y, length);
  drawSecondPart(x, y + length, length);
}

void drawFirstPart(int x, int y, int length) {
  fill(255, 26, 121);
  rect(x - length, y + length / 5, 2 * length, length);
  drawTruc(x, y, length);
}

void drawTruc(int x, int y, int length) {
  int offset = length / 2;
  fill(214, 0, 255);
  rect(x + offset, y, -2 * offset, offset / 2);
  quad(x - offset, y, x - offset * 5 / 4, y + offset / 2, x - offset / 2, y + offset, x + offset / 4, y + offset * 4 / 5);
  quad(x + offset, y, x - offset / 2, y + offset, x, y + offset * 3 / 2, x + offset * 4 / 3, y + offset / 2);
}

void drawSecondPart(int x, int y, int length) {
  int offset = 50;
  fill(66, 197, 245);
  quad(x - offset, y, x - offset * 3 / 2 , y + length , x + offset * 3 / 2, y + length, x + offset, y);
}

void drawFeet(int x, int y, int offset, int width, int height) {
  ellipse(x - offset, y + offset, width, height);
  ellipse(x + offset, y + offset, width, height);
}

void drawArms() {

}
