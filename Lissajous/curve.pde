public class Curve {
  ArrayList<PVector> li;

  public Curve() { 
    li = new ArrayList<PVector>();
  }
  public void addpoint(Drawer a,Drawer b) {
    li.add(new PVector(a.coor().x,b.coor().y));
    println(a.coor().x,b.coor().y);
  }

  public void path() {
    noFill();
    beginShape();
    strokeWeight(2);
    for (PVector p : li) {
      vertex(p.x, p.y);
    }
    endShape();
  }
}
