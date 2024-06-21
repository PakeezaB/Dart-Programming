abstract class Person {
  String name;

  Person(this.name);

  // Set and Get methods
  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  // Abstract method
  bool isOutstanding();
}

// derived class
class Student extends Person {
  double cgpa;

  // Constructor
  Student(String name, this.cgpa) : super(name);

  // Set and Get methods for CGPA
  void setCGPA(double cgpa) {
    this.cgpa = cgpa;
  }

  double getCGPA() {
    return cgpa;
  }

  // implementation of abstract method
  @override
  bool isOutstanding() {
    return cgpa > 3.5;
  }
}

// another derived class
class Professor extends Person {
  int numberOfPublications;

  Professor(String name, this.numberOfPublications) : super(name);

  // Set and Get methods for numberOfPublications
  void setNumberOfPublications(int numberOfPublications) {
    this.numberOfPublications = numberOfPublications;
  }

  int getNumberOfPublications() {
    return numberOfPublications;
  }

  // implementation of abstract method
  @override
  bool isOutstanding() {
    return numberOfPublications > 50;
  }
}

void main() {
  List<Person> people = [];

  // creating a Student object and adding to the array
  Student student1 = Student("Aina", 3.8);
  people.add(student1);

  // creating a Professor object and adding to the array
  Professor professor1 = Professor("Sir Bilal", 30);
  people.add(professor1);

  // checking isOutstanding for student
  print("${student1.getName()} is outstanding: ${student1.isOutstanding()}");

  // setting publication count to 100 for the professor
  professor1.setNumberOfPublications(100);

  // checkin isOutstanding for professor
  print(
      "${professor1.getName()} is outstanding: ${professor1.isOutstanding()}");
}
