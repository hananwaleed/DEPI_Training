/**
 Write a Dart program that has two numbers and prints their:
Sum , Difference , Product , Integer division , Remainder
 */
void main() {
  int a = 10;
  int b = 20;

  int sum = a + b;
  int difference = a - b;
  int product = a * b;
  int division = a ~/ b; 
  int remainder = a % b;

  print("Sum = $sum");
  print("Difference = $difference");
  print("Product = $product");
  print("Division = $division");
  print("Remainder = $remainder");
}
