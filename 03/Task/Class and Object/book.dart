class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayInfo() {
    print("Title: $title");
    print("Author: $author");
  }
}