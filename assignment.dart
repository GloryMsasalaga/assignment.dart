import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Create a base class implementing the interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }

  // Method overriding
  void showInfo() {
    print('This is a Dog.');
  }
}

// Create a derived class inheriting from Dog
class Labrador extends Dog {
  @override
  void makeSound() {
    print('Bark bark!');
  }
}

void main() {
  // Create an instance of Labrador
  Labrador labrador = Labrador();

  // Call overridden method
  labrador.makeSound(); // Output: Bark bark!

  // Call base class method
  labrador.showInfo(); // Output: This is a Dog.

  // Demonstrate initialization with data from a file
  File file = File('data.txt');
  List<String> lines = file.readAsLinesSync();

  for (String line in lines) {
    print(line);
  }
}
