float spacing = 200;
float angle = 0;

ArrayList<Drawer> drawers_x = new ArrayList<Drawer>();
ArrayList<Drawer> drawers_y= new ArrayList<Drawer>();

Curve cur = new Curve();

void setup() {


  background(10);
  size(1000, 1000, P2D);
  stroke(255);
  strokeWeight(5);

  for (float i = spacing; i<height; i+=spacing) {
    line(0, i, width, i);
    line(i, 0, i, height);
  }
  float s_mul =1;
  for (float i = 3*spacing/2; i<height; i+=spacing) {
    drawers_x.add(new Drawer(i, spacing/2, s_mul));
    drawers_x.get((int)(i/spacing)-1).display();
    s_mul+=0.5;
  }

  s_mul =1;
  for (float i = 3*spacing/2; i<height; i+=spacing) {
    drawers_y.add(new Drawer(spacing/2, i, s_mul));
    drawers_y.get((int)(i/spacing)-1).display();
    s_mul+=0.5;
  }
}

void draw() {
  background(10);

  for (float i = spacing; i<height; i+=spacing) {
    line(0, i, width, i);
    line(i, 0, i, height);
  }
  for (float i = 3*spacing/2; i<height; i+=spacing) {
    drawers_x.get((int)(i/spacing)-1).display();
    drawers_x.get((int)(i/spacing)-1).vert();
  }

  for (float i = 3*spacing/2; i<height; i+=spacing) {
    drawers_y.get((int)(i/spacing)-1).display();
    drawers_y.get((int)(i/spacing)-1).horiz();
  }
  
  cur.addpoint(drawers_x.get(2),drawers_x.get(3));
  cur.path();


  angle +=0.03;
}
