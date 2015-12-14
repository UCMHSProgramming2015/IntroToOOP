class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;
  float speed;

  //this is a constructor. you can have more than one constructor for a given class
  Ball(float tSpeed) {
    diam = 100;
    speed = tSpeed;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(tSpeed);
    c = color(random(255), random(50), random(100, 255));
    speed = 1;
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    loc.add(vel);

    //wrap the ball's position
    if (loc.x >= width) {
      loc.x = 0;
    } else if (loc.x  <= 0) {
      loc.x = width ;
    }
    if (loc.y >= height) {
      loc.y = 0;
    } else if (loc.y <= 0) {
      loc.y = height ;
    }
  }
}