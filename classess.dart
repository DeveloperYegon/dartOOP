import "dart:math";

class Circle {
//properties of a class
  double radius;
//constractor
  Circle(this.radius);
  //factory method to create circles of different  radii
  factory Circle.create(double radius) {
    if (radius <= 0) {
      throw ArgumentError("Radius must be positive");
    }
    return Circle(radius);
  }
  //method to calculate area
  double calculateArea() {
    return pi * radius * radius;
  }
}

// void main() {
//   // instantiating
//   var circle1 = Circle(10);
//   print(circle1.calculateArea());

//   try {
//     Circle circle2 = Circle(30);
//     print(circle2.calculateArea());
//   } catch (e) {
//     print(e);
//   }
// }

// FILE SYSTEM  MANAGEMENT
// Singleton class to manage file system operations
class FileSystemManager {
  //static final variable to hold the single instance of the class
  static final FileSystemManager _instance = FileSystemManager._internal();

  //private  constructor for initializing logic
  FileSystemManager._internal() {
    // instantiation logic here
    print("Singleton instance created");
  }
  // factory instance ensures only one instance is returned
  factory FileSystemManager() {
    return _instance;
  }

  void openFile() {
    print("file opened");
  }

  void writeFile() {
    print("file written");
  }
}

// void main() {
//   //creating instances of file system manager
//   FileSystemManager manager1 = FileSystemManager();
//   FileSystemManager manager2 = FileSystemManager();

//   print(manager1.hashCode == manager2.hashCode);

//   //using methods of FileSystemManager
//   manager2.writeFile();
//   manager1.openFile();
// }

//Extension methods
extension StringExtensions on String {
  String capitalizeFirstLetter() {
    if (this.isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + this.toString();
  }
}

void main() {
  String message = "hello world";
  String capitalizedMessage = message.capitalizeFirstLetter();

  print(capitalizedMessage);
}
