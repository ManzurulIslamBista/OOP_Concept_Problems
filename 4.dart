class Circle {
  double radius;

  Circle(this.radius);
  double get getRadius => radius;
  void setRadius(double newRadius) {
    radius = newRadius;
  }

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
  print("Radius: ${obj.getRadius}");
  obj.setRadius(7.0);
  print("Updated Radius: ${obj.getRadius}");
  obj.area();
  obj.circumference();
}
