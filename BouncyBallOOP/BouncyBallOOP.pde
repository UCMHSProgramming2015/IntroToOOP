Ball b;                //declare a new ball called b
Ball c;

void setup() {
  size(800, 600);
  b = new Ball(10);      //initialize b as a new object of the Ball class
  c = new Ball(.9);
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  b.move();            //call b's move() method
  c.display();
  c.move();
}