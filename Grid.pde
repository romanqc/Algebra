class Grid {
  
  int cols, rows, slice;
  Array3DWithColors<Box> grid;
  int size;
  
  Grid(int cols, int rows, int slice, int size) {
    this.cols = cols;
    this.rows = rows;
    this.slice = slice;
    this.size = size;
    
    // Initialize the Array3DWithColors
    grid = new Array3DWithColors<>(cols, rows, slice);
    
    // Populate the grid with Boxes and random colors
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        for (int k = 0; k < slice; k++) {
          Box box = new Box(size);
          color c = color(255, 255, 255, 0);
          grid.setElement(i, j, k, box, c);
        }
      }
    }
  }
  
  void display() {
    center();
    //image(img, cols, rows);
    img.resize((cols-1)*size, (rows-1)*size);
    //image(img, 0, 0);
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        for (int k = 0; k < slice; k++) {
          pushMatrix();
          translate(i * size, j * size, k * size);

          // Get the Box and its associated color
          ElementWithColor<Box> element = grid.getElement(i, j, k);
          Box box = element.getValue();
          //color c = element.getColor();
          
          color c = img.get(size*i, size*j);
          float brightness = brightness(c);
          
          if (brightness >= 1 && brightness <= 245) {
            translate(0, 0, brightness * size * sin(2*t) / 5);
            box.setColor(c);
            box.display();
          }
          popMatrix();
        }
      }
    }
  }
  
  void center() {
    translate(
      -(rows-1)*size/2, 
      -(cols-1)*size/2, 
      -(slice-1)*size/2
    );
    translate(0, 0, -30*sin(2*t));
  }
  
  //private color generateColor() {
    
  //}
  
}
