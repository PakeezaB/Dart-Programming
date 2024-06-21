// Abstract class
abstract class Animal {
  void makeSound();
}

// Implementing an interface
class Cat implements Animal {
  void makeSound() {
    print('meow!');
  }
}

void main() {
  // Creating an instance of Cat
  var cat = Cat();

  // Using the makeSound method
  cat.makeSound(); // Output: meow!
}
