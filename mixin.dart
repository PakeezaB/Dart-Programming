// Mixin
mixin Swimmer {
  void swim() {
    print("Swims!");
  }
}

// Mixin
mixin Flyer {
  void fly() {
    print("fly!");
  }
}

// Base class
class Animal {
  String name;

  Animal(this.name);

  void displayInfo() {
    print("Animal: $name");
  }
}

// class that uses mixins
class Duck extends Animal with Swimmer, Flyer {
  Duck(String name) : super(name);

  @override
  void displayInfo() {
    super.displayInfo();
    swim();
    fly();
  }
}

// another class that uses a mixin
class Fish extends Animal with Swimmer {
  Fish(String name) : super(name);

  @override
  void displayInfo() {
    super.displayInfo();
    swim();
  }
}

void main() {
  var duck = Duck("Bubbly ");
  duck.displayInfo();  
  var fish = Fish("gummy ");
  fish.displayInfo();  
}
