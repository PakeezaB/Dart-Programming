import 'dart:math';

// generic class RandomBox
class RandomBox<itemType> {
  // List to hold items
  List<itemType> _items = [];

  void add(itemType item) {
    _items.add(item);
  }

  // to check if the box is empty
  bool isEmpty() {
    return _items.isEmpty;
  }

  //to draw an item randomly
  itemType? drawItem() {
    if (isEmpty()) {
      return null;
    }
    Random random = Random();
    int index = random.nextInt(_items.length);
    return _items.removeAt(index);
  }
}

void main() {
  // creating a RandomBox for Strings
  RandomBox<String> nameBox = RandomBox<String>();
  nameBox.add("Ayesha");
  nameBox.add("Aina");
  nameBox.add("Iraj");

  // Create a RandomBox for Integers
  RandomBox<int> lotteryBox = RandomBox<int>();
  lotteryBox.add(15);
  lotteryBox.add(10);
  lotteryBox.add(20);

  // Test drawing items from the nameBox
  print("Drawing from nameBox:");
  while (!nameBox.isEmpty()) {
    print(nameBox.drawItem());
  }
  print("Attempt to draw from empty nameBox: ${nameBox.drawItem()}");

  // Testing drawing items from the lotteryBox
  print("\nDrawing from lotteryBox:");
  while (!lotteryBox.isEmpty()) {
    print(lotteryBox.drawItem());
  }
  print("Attempt to draw from empty lotteryBox: ${lotteryBox.drawItem()}");
}
