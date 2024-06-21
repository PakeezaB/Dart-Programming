void main() {
  //Arithmetic operators
  print("Arithmetic operators");
  int num1 = 10;
  int num2 = 30;

  print("Addition: ${num1 + num2}");
  print("Subtraction: ${num2 - num1}");
  print("Multiplication: ${num1 * num2}");
  print("Division: ${num1 / num2}");
  print("Integer division: ${num2 ~/ num1}");
  print("Modulus: ${num1 % num2}");
  print("");

//--------------------------

  //Relational and Equality Operators
  print("Relational and Equality Operators");
  print("Equality: ${num1 == num2}");
  print("Not equal: ${num1 != num2}");
  print("Greater than: ${num1 > num2}");
  print("Less than: ${num1 < num2}");
  print("Greater than or equal to: ${num1 >= num2}");
  print("Less than or equal to: ${num1 <= num2}");
  print("");
//--------------------------

  //   Assignment Operators
  print("Assignment Operators");
  num1 += 11; //num1=num1+11
  print("num1 after Adding and assigning: $num1");

  num2 -= 20; //num2=num2-20
  print("num2 after Subtracting and assigning: $num2");

  num1 *= 32; //num1=num1*32
  print("num1 after mutliplicating and assigning: $num1");

  //num2/=2;
  //ERROR: a value of type double cant be assigned to a variable of type int

  num2 ~/= 3; //num2=num2/3
  print("num2 after division and assigning: $num2");
  num1 %= 60; //num1=num1%60
  print("num1 after modulus: $num1");
  print("");
//--------------------------------

  ///Logical operators
  print("Logical operators");
  var val1 = false;
  var val2 = true;

  print("Logical AND &&");
  print(val1 && val2);
  print("Logical OR");
  print(val1 || val2);
  print("Logical NOT");
  print(!val1);
  print("");

//-------------------------
  //conditional operators
  print("Conditional operators");
  var result = num1 > num2 ? num1 : num2;
  print(result);
  var val = 12;
  var anotherval =
      val ?? 5; //left operator cant be null but still its giving correct output
  print(anotherval);
  print("");
//----------------------------
  //bitwise operators
  print("Bitwise operators");
  print(~num1); //bitwise NOT

  ///why the output like this
  //By default, Dart uses signed 32-bit integers, but when we print the result directly, the compiler might be interpreting it as an unsigned integer, hence giving 4294967285.
  print(num1 & num2); //bitwise A
  print(num1 | num2); //bitwise OR
  print(num1 ^ num2); //bitwise XOR
  print(num1 << 1); //Left shift
  print(num2 >> 1); //Right shift
}
