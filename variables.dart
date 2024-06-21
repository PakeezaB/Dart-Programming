void main() {
  ///basic data types
  String name = "Pakeeza";
  print("Name $name");

  int regno = 034;
  print("Registration No # $regno");

  double age = 21.0;
  print("Age $age");

  bool graduated = false;
  print("Graduated: $graduated");

  ///var
  ///used to declare variable without mentioning its data type
  //complier determines the data type itself by the values assined to it

  //not a datatype
  var uni = "Comsats Wah";
  print("University $uni");

  ///dynamic
  //a data type
  //used to declare variables that can have values of any type
  //can change types at run time
  //the only difference var has that value can not be changed and data type is determined at compile time

  dynamic dvariable = "Bytewise Fellow";
  print(dvariable);
  dvariable = true;
  print(dvariable);
  dvariable = 123;
  print(dvariable);
}
