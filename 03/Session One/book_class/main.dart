/*Create a class called Book with the following properties:

title (String)

author (String)

year (int)

rating (double?) // nullable

Add a constructor to initialize all properties.

Add a method displayInfo() to print book details.

Use null safety when printing rating.
 */

import 'book.dart';
void main() {
  Book book1 = Book(
    title: "Clean Code",
    author: "Robert C. Martin",
    year: 2008,
    rating: 4.8,
  );

  Book book2 = Book(
    title: "The Pragmatic Programmer",
    author: "Andy Hunt",
    year: 1999,
  );

  book1.displayInfo();
  print("------------");
  book2.displayInfo();
}
