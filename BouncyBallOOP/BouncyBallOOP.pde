Ball b;                //declare a new ball called b
Ball c;
void setup() {
  size(800, 800);
  b = new Ball(45);      //initialize b as a new object of the Ball class
  c = new Ball(45);
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();
  b.move();    //Gives ball movement
  c.move();
  b.bounce();    //Balls do not fly off screen
  c.bounce();
}