// Student class with encapsulation
class Student {
  late String _name;
  List<int> _resultArray = List<int>.filled(5, 0);

  // Default constructor
  Student() {
    _name = '';
  }

  // One-argument constructor for Name
  Student.withName(String name) {
    _name = name;
  }

  // Two-argument constructor
  Student.withDetails(String name, List<int> results) {
    _name = name;
    if (results.length == 5) {
      _resultArray = results;
    } else {
      throw ArgumentError('Result array should contain exactly 5 subjects');
    }
  }

  // Method to calculate average
  double average() {
    double sum = 0;
    for (int result in _resultArray) {
      sum += result;
    }
    return sum / _resultArray.length;
  }

  // Method to compare average with another student
  String compareAverage(Student otherStudent) {
    double thisAverage =
        this.average(); //calculating average for current student
    double otherAverage =
        otherStudent.average(); //calculating average for the other student

    if (thisAverage > otherAverage) {
      return '${this._name} has a higher average (${thisAverage.toStringAsFixed(2)}) than ${otherStudent._name} (${otherAverage.toStringAsFixed(2)})';
    } else if (thisAverage < otherAverage) {
      return '${otherStudent._name} has a higher average (${otherAverage.toStringAsFixed(2)}) than ${this._name} (${thisAverage.toStringAsFixed(2)})';
    } else {
      return '${this._name} and ${otherStudent._name} have the same average (${thisAverage.toStringAsFixed(2)})';
    }
  }
}

void main() {
  // Creating instances of Student using different constructors
  //Student student1 = Student();
  Student student2 = Student.withDetails('Alina', [54, 65, 23, 90, 54]);
  Student student3 = Student.withDetails('Aina', [85, 90, 92, 88, 87]);

  // Calculating and printing averages
  print(
      '${student3._name}\'s average marks: ${student3.average().toStringAsFixed(2)}');

  // Comparing averages between students
  print(student3.compareAverage(student2));
}
