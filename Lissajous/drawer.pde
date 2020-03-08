public class Drawer {
  float x;
  float y;

  float speed;
  float px;
  float py;


  public Drawer(float x, float y, float speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;

    float px = ((spacing-30)/2)*cos(angle*speed);
    float py = ((spacing-30)/2)*sin(angle*speed);
  }

  public void display() {
    float px = ((spacing-30)/2)*cos(angle*speed);
    float py = ((spacing-30)/2)*sin(angle*speed);
    noFill();
    strokeWeight(spacing/50);
    ellipse(x, y, spacing-30, spacing-30);
    fill(255);
    push();
    translate(x, y);
    ellipse(px, py, spacing/10, spacing/10);
    pop();
  }

  public void horiz() {
    float px = ((spacing-30)/2)*cos(angle*speed);
    float py = ((spacing-30)/2)*sin(angle*speed);

    push();
    translate(x, y);
    strokeWeight(1);
    stroke(255, 255, 255, 90);
    line(px, py, width, py);
    pop();
  }


  public void vert() {
    float px = ((spacing-30)/2)*cos(angle*speed);
    float py = ((spacing-30)/2)*sin(angle*speed);

    push();
    translate(x, y);
    strokeWeight(1);
    stroke(255, 255, 255, 90);
    line(px, py, px, height);
    pop();
  }

  public PVector coor() {
    float px = ((spacing-30)/2)*cos(angle*speed);
    float py = ((spacing-30)/2)*sin(angle*speed);
    return new PVector(x+px, y+py);
  }
}
