class Book  ///created class of book
{
  
  String title;
  String author;

  // Constructor
  Book(this.title, this.author);

  // Method to display book information
  void displayInfo() {
    print('Book: $title by $author');  }
}

void main() {
  // Created object of the Book class
  var book1 = Book('Oliver Twist', 'Charles Dickens');

  // Using methods of the Book class
  book1.displayInfo();

}