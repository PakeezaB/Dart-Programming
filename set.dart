void main() //main function
{
  // Set of integers
  Set<int> numSet = {1, 2, 3, 4, 5};

  // Set of strings
  Set<String> nameSet = {'Pakeeza', 'Urwa', 'Aina'};
  numSet.add(8);
  numSet.remove(1);

  nameSet.add("Rida");
  nameSet.remove('Aina');
  print(numSet.length); //give the length of set
  print(nameSet.contains('Urwa')); //Gives bool output

  print(numSet);
  print(nameSet);
}
