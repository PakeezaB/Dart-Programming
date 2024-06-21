void func1() //without return type
{
  print("Without return type");
}

int square(int n) //with return type
{
  int res = n * n;
  return res;
}

multiply(int n1, int n2) //inferred return type func
{
  return n1 * n2;
}

int add(int num1, [int num2 = 0]) //optional parametrized func
{
  return num1 + num2;
}

void info({required String name, int age = 10}) //named paramtrized function
{
  print('Name: $name, Age: $age');
}

///arrow function
void arrow_func() => print("Short way to write function");

void main() //main function
{
  int num = 9;
  func1();
  print("Square: ${square(num)}");
  print("Multiplication ${multiply(12, 12)}");
  print('Sum: ${add(3, 4)}');
  print('Sum with initial value of num2: ${add(3)}');
  info(name: 'Pakeeza', age: 21);
  info(name: 'Aina');
  arrow_func();
}
