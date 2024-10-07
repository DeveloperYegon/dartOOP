
//polymorphism
class Animal {
  void makeSound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Dog meow!");
  }
}

void main() {
  Animal animal = Animal();
  Dog dog = Dog();
  Cat cat = Cat();

  animal.makeSound();
  cat.makeSound();
  dog.makeSound();
}
