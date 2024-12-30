public class ElementWithColor<T> {
  
  T value;
  color c;

  ElementWithColor(T value, color c) {
    this.value = value;
    this.c = c;
  }

  T getValue() {
    return value;
  }

  void setValue(T value) {
    this.value = value;
  }

  color getColor() {
    return c;
  }

  void setColor(color c) {
    this.c = c;
  }
  
}
