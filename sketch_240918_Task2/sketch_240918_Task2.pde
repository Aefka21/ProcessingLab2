Nayeon mascot;

void setup() {
    size(600, 600);
}

void draw() {
    background(255);
    if (mascot != null) {
        mascot.drawMascot();
    }
}

void keyPressed() {
    if (key == 'c') {
        mascot = new Nayeon(int(random(100, 500)), int(random(100, 500)), int(random(50, 100)));
    } else if (key == 'd') {
        mascot = null;
    }
}