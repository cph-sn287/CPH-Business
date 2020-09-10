// variables
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color black = color(0, 0, 0);
color gray = color(128, 128, 128);
boolean isGreen = true;

// traffic light background/shape
void makeShape() {
  fill(black);
  rectMode(CENTER);
  rect(255, 255, 200, 400);
}

// red light
void redLight() {
  fill(red);
  circle(255, 120, 80);
}

// yellow light
void yellowLight() {
  fill(yellow);
  circle(255, 255, 80);
}

// green light
void greenLight() {
  fill(green);
  circle(255, 380, 80);
}

// red light off
void redLightOff() {
  fill(gray);
  circle(255, 120, 80);
}

// yellow light off
void yellowLightOff() {
  fill(gray);
  circle(255, 255, 80);
}

// green light off
void greenLightOff() {
  fill(gray);
  circle(255, 380, 80);
}

void setup() {
  size(500, 500);
  makeShape();
  redLight();
  yellowLight();
  greenLight();
}

void draw() {
}

void keyPressed() {
  makeShape();

  if (isGreen) {
    redLight();
    yellowLightOff();
    greenLightOff();
    isGreen = false;
  } 
  else {
    greenLight();
    redLightOff();
    yellowLightOff();
    isGreen = true;
  }
}
