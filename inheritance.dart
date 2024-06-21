// Parent class (superclass)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

// Child class (subclass) inheriting from Animal
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void wagTail() {
    print('Dog wags tail');
  }
}

void main() {
  // Creating an instance of the Dog class
  var dog = Dog('Buddy', 3, 'Labrador');

  // Accessing inherited properties and methods
  print('Name: ${dog.name}, Age: ${dog.age}, Breed: ${dog.breed}');
  dog.makeSound();
  dog.wagTail();
}
