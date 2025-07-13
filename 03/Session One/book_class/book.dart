
class Book {

  String title;
  String author;
  int year;
  double? rating; 


  Book({
    required this.title,
    required this.author,
    required this.year,
    this.rating,
  });


  void displayInfo() {
    print("Book Details:");
    print("Title: $title");
    print("Author: $author");
    print("Year: $year");


    if (rating != null) {
      print("Rating: $rating");
    } else {
      print("Rating: Not rated yet");
    }
  }
}

