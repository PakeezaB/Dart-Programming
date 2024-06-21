// base class
class Shape {
  // method to calculate the area
  double getArea() {
    return 0.0;
  }
}

// Derived class
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

// derived class
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

// derived class
class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double getArea() {
    return 0.5 * base * height;
  }
}

void main() {
  // list of Shape references to different types of shapes
  List<Shape> shapes = [Circle(5.0), Rectangle(4.0, 6.0), Triangle(4.0, 5.0)];

  // polymorphic behavior: calling the same function (getArea()) on different shapees
  for (var shape in shapes) {
    print('The area of the shape is ${shape.getArea()}');
  }
}
