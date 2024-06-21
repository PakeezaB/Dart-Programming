void main() {
  // List of integers
  List<int> nums = [0, 1, 2, 3];

  // List of strings
  List<String> names = ['Pakeeza', 'Iraj', 'Aina'];

  print(nums[2]);
  print(names[2]);

  names.add("Sana");
  names.remove("Iraj");

  nums.add(4); //builtin functions add,remove,etc
  nums.remove(0);

  print(nums);
  print(names);
}
