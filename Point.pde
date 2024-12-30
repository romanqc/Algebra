class Point {
  
  float x, y;
  color c = #ffffff;
  
  Point(float x, float y) {
    this.x = x;
    this.y = y;
    c = #ffffff;
  }
  
  void display() {
    stroke(c);
    point(x, y);
  }
  
  void setColor(color select) {
    c = select;
  }
  
  color getColor() {
    println(hex(c, 6));
    return c;
  }
}
