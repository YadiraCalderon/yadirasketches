void setup()
{
  size(500, 500, P3D);
  background(0, 170, 136);
}

void draw()
{
  if (mousePressed)
  {
    fill(102, 255, 221);
  } else
  {
    fill(100, 0, 0);
  }
  triangle(30, 80, 60, 30, 100, 50);
  if (mousePressed) {

    fill(170, 221, 153);
  } else
  {
    fill(187, 0, 221);
  }
  ellipse(mouseX, mouseY, 100, 100);
  translate(80, 80, 50);
  noFill();
  rotateY(1);
  box(mouseX);

  lights();
  translate(40, 50, 0);
  sphere(mouseX);
}

