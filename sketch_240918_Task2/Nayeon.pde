class Nayeon {
    int x;
    int y;
    int length;

    Nayeon(int _x, int _y, int _length) {
        x = _x;
        y = _y;
        length = _length;
    }

    void drawMascot() {
        int radius = length;
        drawHead(radius, x, y);
        drawFeet(x, y + radius / 2 + length * 3 / 2, 50, 20, 40);
        drawBody(x, y + radius / 2, length);
    }

    void drawHead(int radius, int x, int y) {
        fill(254, 222, 190);
        ellipse(x, y * 7 / 6, radius, radius);
    }

    void drawBody(int x, int y, int length) {
        drawFirstPart(x, y, length);
        drawSecondPart(x, y + length * 6 / 5, length);
        drawArms(x, y, length, length * 2 / 5, length * 4 / 5);
    }

    void drawFirstPart(int x, int y, int length) {
        fill(255, 26, 121);
        rect(x - length  * 3 / 4, y + length / 5, 1.5 * length, length);
        drawCollar(x, y, length);
    }

    void drawCollar(int x, int y, int length) {
        int offset = length / 2;
        fill(214, 0, 255, 120);
        stroke(196, 0, 255);
        quad(x - offset, y, x - offset * 5 / 4, y + offset * 5 / 12, x, y + length / 3, x, y + offset / 3);
        quad(x + offset, y, x + offset * 5 / 4, y + offset * 5 / 12, x, y + length / 3, x, y + offset / 3);
        rect(x - offset / 2, y + offset * 5 / 12, length / 2, offset / 2);
        quad(x - offset / 2, y + offset * 5 / 12, x - offset * 4 / 5, y + length * 4 / 5, x - offset / 2 + offset / 10, y + length, x, y + length / 3);
        stroke(0);
    }

    void drawSecondPart(int x, int y, int length) {
        int offset = 50;
        fill(0, 255, 255);
        quad(x - offset, y, x - offset * 6 / 5 , y + length * 9 / 10 , x + offset * 6 / 5, y + length * 9 / 10, x + offset, y);
        fill(66, 197, 245, 100);
        quad(x - offset, y, x - offset * 3 / 2 , y + length , x + offset * 3 / 2, y + length, x + offset, y);
    }

    void drawFeet(int x, int y, int offset, int width, int height) {
        fill(0);
        ellipse(x - offset, y + offset, width, height);
        ellipse(x + offset, y + offset, width, height);
    }

    void drawArms(int x, int y, int length, int width, int height) {
        int offset = length / 2;
        fill(255, 26, 121);
        arc(x - length * 20 / 21, y + offset, width, height - offset, PI, TWO_PI);
        arc(x + length * 20 / 21, y + offset, width, height - offset, PI, TWO_PI);
        rect(x - length * 3 / 4 - width, y + offset, width, height);
        rect(x + length * 3 / 4, y + offset, width, height);
        fill(254, 222, 190);
        arc(x - length * 20 / 21, y + offset + height, width, height - offset, 0, PI);
        arc(x + length * 20 / 21, y + offset + height, width, height - offset, 0, PI);
    }
}