import "dart:math";

//Abastraction
abstract class Shape {
  double calculateArea();

  void printInfo() {
    print("THis is a shape");
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.height, this.width);

  @override
  double calculateArea() {
    return height * width;
  }
}

void main() {
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(10.0, 20.0);

  circle.printInfo();
  print("Circle Area: ${circle.calculateArea()}");

  rectangle.printInfo();
  print("Rectangle Area: ${circle.calculateArea()}");
}
