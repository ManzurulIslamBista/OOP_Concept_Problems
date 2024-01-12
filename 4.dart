class Circle {
  double radius;

  Circle(this.radius);

  void area() {
    double cir_area = 3.1416 * radius * radius;
    print("Area : $cir_area");
  }

  void circumference() {
    double cir = 2 * 3.1416 * radius;
    print("Circumference : $cir");
  }
}

void main() {
  Circle obj = Circle(6.6);
  obj.area();
  obj.circumference();
}
