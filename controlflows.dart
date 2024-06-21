int add(int a, int b) {
  return a + b; //used to exit from a function
}

void main() {
  ///if-else
  int num1 = 78;
  int num2 = 45;
  print("if else,if else if else");
  if (num1 > num2) {
    print('num1 is greater than num2');
  } else if (num1 < num2) {
    print('num1 is less than num2');
  } else {
    print('num1 is equal to num2');
  }
  print("");

  print("switch statement");
//   ///switch statement
  var choice = 2;
  switch (choice) {
    case 1:
      print('The number is 1');
      break;
    case 2:
      print('The number is 2');
      break;
    case 3:
      print('The number is 3');
      break;
    default:
      print('Other');
  }
  print("");

  print("for loop");
//     //for loop
  for (var i = 0; i < 5; i++) {
    print("$i Iteration");
  }
  print("");

  print("for in loop");
  var values = ["red", "yellow", "blue"];
  for (var value in values) {
    print(value);
  }
  print("");

  print("while loop");
  //while loop
  int j = 0;
  while (j < 5) {
    print(j);
    j++;
  }
  print("");

  print("do while loop");
  int k = 0;
  do {
    print(k);
    k++;
  } while (k < 5);
  print("");

//   //break and continue
  print("Break");
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      break; // exits the loop when i is 3
    }
    print(i);
  }
  print("");
  print("Continue");
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      continue; // skips the iteration when i is 3
    }
    print(i);
  }
  print("");
  print("Return");
  int res = add(78, 90);
  print(res);
//
  print("");
  print("Try catch");
  try {
    int sol = 10 ~/ 0;
    print(sol);
  } catch (e) {
    print('An error occurred: $e');
  }
}
