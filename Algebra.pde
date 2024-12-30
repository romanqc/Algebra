import peasy.*;

PImage img;
float t;

PeasyCam cam;
Grid grid; //<>//

void setup() {
  size(1600, 1600, P3D);
  cameraSetup();
  grid = new Grid(40, 40, 1, 3);
  img = loadImage("Images/smooth.jpg");
}

void draw() {
  background(0);
  lights();
  //rotateX(cos(t));
  //rotateY(t/2);
  rotateZ(PI/4 + t);
  grid.display();
  t+=0.01;
  //saveFrame("Frames/line-######.png");
}

void cameraSetup() {
  cam = new PeasyCam(this, 400);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(3000);
}
