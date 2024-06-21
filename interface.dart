// calculator interface (abstract class)
abstract class Calculator {
  // methods to be implemented by classes that use this interface
  double add(double a, double b);
  double subtract(double a, double b);
  double multiply(double a, double b);
  double divide(double a, double b);
}

// basic calculator class implementing the Calculator interface
class BasicCalculator implements Calculator {
  @override
  double add(double a, double b) {
    return a + b;
  }

  @override
  double subtract(double a, double b) {
    return a - b;
  }

  @override
  double multiply(double a, double b) {
    return a * b;
  }

  @override
  double divide(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError('cannot divide by zero');
    }
  }
}

void main() {
  // Create an instance of BasicCalculator
  BasicCalculator calculator = BasicCalculator();

  // Perform calculations using the implemented methods
  print('Addition: ${calculator.add(5, 3)}');
  print('Subtraction: ${calculator.subtract(8, 4)}');
  print('Multiplication: ${calculator.multiply(2.5, 3)}');
  try {
    print('Division: ${calculator.divide(10, 2)}');
    print('Division by zero: ${calculator.divide(5, 0)}');
  } catch (e) {
    print('Error: $e');
  }
}
