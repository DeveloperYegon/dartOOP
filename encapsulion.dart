import "dart:math";

//Encapsulation
class Circle {
  // Private property with underscore (_)
  double _radius;
// Constructor to initialize the radius
  Circle(this._radius);
  // Getter method to access the private radius
  double get radius => _radius;
  // Setter method to update the radius with validation
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("The radius must be greater than 0");
    }
  }

  // Method to calculate area of the circle
  double calculateArea() {
    double area = pi * _radius * _radius;
    return area;
  }
}

void main() {
// creating instance of a circle
  Circle circle = Circle(20);

  // Accessing the radius using getter
  print("Initial radius: ${circle.radius}");

  // Calculating and printing the area
  print("Initial area: ${circle.calculateArea()}");

  // Updating the radius using setter
  circle.radius = 7.0;

  // Accessing updated radius and area
  print("Updated radius: ${circle.radius}");
  print("Updated area: ${circle.calculateArea()}");

  // Trying to set an invalid radius
  //circle.radius = -3.0; // This will trigger validation
}
