int count =4;
Ball b;                //declare a new ball called b
Ball c;
Ball[] balls = new Ball[count];
void setup() {
  size(800, 800);
  for (int i=0; i<count; i++) {
    balls[i] = new Ball(20);      //initialize b as a new object of the Ball class
    balls[i] = new Ball(45);
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
    balls[i].display();         //call b's display() method
    balls[i].move();    //Gives ball movement
    balls[i].bounce();    //Balls do not fly off screen
  }
}