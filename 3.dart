class Rectangle {
  double height;
  double width;

  Rectangle(this.height, this.width);

  double rectaglearea() {
    double area = height * width;
    return area;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rec = Rectangle(20.05, 15.05);
  print("Area : ${rec.rectaglearea()}");
  print("Perimeter : ${rec.calculatePerimeter()}");
  ;
}
