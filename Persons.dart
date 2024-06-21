// Superclass (Parent class)
class Person {
  late String _name;
  late String _address;
  late String _emailAddress;
  late int _phoneNo;

  Person(this._name, this._address, this._emailAddress, this._phoneNo);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String value) {
    _name = value;
  }

  // Getter for address
  String get address => _address;

  // Setter for address
  set address(String value) {
    _address = value;
  }

  // Getter for emailAddress
  String get emailAddress => _emailAddress;

  // Setter for emailAddress
  set emailAddress(String value) {
    _emailAddress = value;
  }

  // Getter for phoneNo
  int get phoneNo => _phoneNo;

  // Setter for phoneNo
  set phoneNo(int value) {
    _phoneNo = value;
  }
}

// Subclass inheriting from Person
class Student extends Person {
  String status;

  Student(String name, String address, String emailAddress, int phoneNo,
      this.status)
      : super(name, address, emailAddress, phoneNo);
}

// Subclass inheriting from Person
class Employee extends Person {
  String _office;
  int _salary;
  DateTime _dateHired;

  Employee(String name, String address, String emailAddress, int phoneNo,
      this._office, this._salary, this._dateHired)
      : super(name, address, emailAddress, phoneNo);

  // Getter for office
  String get office => _office;

  // Setter for office
  set office(String value) {
    _office = value;
  }

  // Getter for salary
  int get salary => _salary;

  // Setter for salary
  set salary(int value) {
    _salary = value;
  }

  // Getter for dateHired
  DateTime get dateHired => _dateHired;

  // Setter for dateHired
  set dateHired(DateTime value) {
    _dateHired = value;
  }
}

// Subclass inheriting from Employee
class Faculty extends Employee {
  int _officeHours;
  int _rank;

  Faculty(
      String name,
      String address,
      String emailAddress,
      int phoneNo,
      String office,
      int salary,
      DateTime dateHired,
      this._officeHours,
      this._rank)
      : super(name, address, emailAddress, phoneNo, office, salary, dateHired);

  // Getter for officeHours
  int get officeHours => _officeHours;

  // Setter for officeHours
  set officeHours(int value) {
    _officeHours = value;
  }

  // Getter for rank
  int get rank => _rank;

  // Setter for rank
  set rank(int value) {
    _rank = value;
  }

  // Method to display faculty information
  void display() {
    print("Faculty Information");
    print(
        'Faculty: $_name, Address: $_address, Email: $_emailAddress, Phone: $_phoneNo');
    print(
        'Office: $_office, Salary: $_salary, Date Hired: $_dateHired, Office Hours: $_officeHours, Rank: $_rank');
  }
}

// Subclass inheriting from Employee
class Staff extends Employee {
  String _title;

  Staff(String name, String address, String emailAddress, int phoneNo,
      String office, int salary, DateTime dateHired, this._title)
      : super(name, address, emailAddress, phoneNo, office, salary, dateHired);

  // Getter for title
  String get title => _title;

  // Setter for title
  set title(String value) {
    _title = value;
  }

  // Method to display staff information
  void display() {
    print("Staff Information");
    print(
        'Staff: $_name, Address: $_address, Email: $_emailAddress, Phone: $_phoneNo');
    print(
        'Office: $_office, Salary: $_salary, Date Hired: $_dateHired, Title: $_title');
  }
}

void main() {
  // Creating obj of Faculty class
  var faculty = Faculty(
      'Mam Ayesha',
      'Comsats University.',
      'jayesh234@gmail.com',
      03319989888,
      'Wah Cantt',
      500000,
      DateTime(2018, 9, 1),
      10,
      4);
  faculty.display();
  print("");

  // Creating obj of Staff class
  var staff = Staff('Ali', 'Rawalpindi', 'ali12@gamil.com', 03011223210,
      'Office 202', 40000, DateTime(2019, 4, 20), 'Admin Incharge');
  staff.display();
}
