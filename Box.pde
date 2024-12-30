class Box {
  
  int size;
  color c;

  Box(int size) {
    this.size = size;
    this.c = #ffffff;
  }
  
  void display() {
    stroke(c);
    //noFill();
    fill(c);
    box(size);
  }
  
  void setColor(color select) {
    this.c = select;
  }
  
  color getColor() {
    println(hex(c, 6));
    return c;
  }
}
