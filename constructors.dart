// Class representing a Book
class Book {
  String title;
  String author;

  // Default Constructor
  Book(this.title, this.author);
  // Named Constructor

  Book.favourite({required String this.title, required this.author}) {
    this.title = "Jane Eyre";
    this.author = "Charlotte Bronte";
  }

  //parametrized constructor
//  Book(
//      {required String this.title, required String this.author});

  // Method to display book information
  void displayInfo() {
    print('Book: $title by $author');
  }
}

void main() {
  // Creating obj using default constructor
  Book book1 = Book('Oliver Twist', 'Charles Dickens');
  book1.displayInfo();

  //named const
  Book book2 = Book.favourite(title: "My fav book", author: "fav author");
  book2.displayInfo();
}
