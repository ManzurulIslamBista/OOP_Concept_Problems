import 'dart:math';

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle({required this.length, required this.width});

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Triangle extends Shape {
  double height;
  double weight;
  double cross;

  Triangle({required this.height, required this.weight, required this.cross});

  @override
  double calculateArea() {
    double s = (height + weight + cross) / 2;
    return sqrt(s * (s - height) * (s - weight) * (s - cross));
  }

  @override
  double calculatePerimeter() {
    return height + weight + cross;
  }
}

void main() {
  var rectangle = Rectangle(length: 4, width: 6);
  var circle = Circle(radius: 3);
  var triangle = Triangle(height: 3, weight: 4, cross: 5);

  print(
      'Rectangle - Area: ${rectangle.calculateArea()}, Perimeter: ${rectangle.calculatePerimeter()}');
  print(
      'Circle - Area: ${circle.calculateArea()}, Perimeter: ${circle.calculatePerimeter()}');
  print(
      'Triangle - Area: ${triangle.calculateArea()}, Perimeter: ${triangle.calculatePerimeter()}');
}
