public class Array3DWithColors<T> {
  
  private ElementWithColor<T>[][][] elements;

  public Array3DWithColors(int xSize, int ySize, int zSize) {
    elements = (ElementWithColor<T>[][][]) new ElementWithColor[xSize][ySize][zSize];
  }

  public void setElement(int x, int y, int z, T value, color c) {
    elements[x][y][z] = new ElementWithColor<>(value, c);
  }

  public ElementWithColor<T> getElement(int x, int y, int z) {
    return elements[x][y][z];
  }

  public int[] getDimensions() {
    return new int[] { 
      elements.length, elements[0].length, elements[0][0].length 
    };
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    for (int x = 0; x < elements.length; x++) {
      for (int y = 0; y < elements[x].length; y++) {
        for (int z = 0; z < elements[x][y].length; z++) {
          sb.append("[").append(x).append("][").append(y).append("][").append(z).append("] = ");
          sb.append(elements[x][y][z]).append("\n");
        }
      }
    }
    return sb.toString();
  }
}
