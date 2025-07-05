/*
You have a list of prices: [10, 20, 30, 40]
Use forEach to print the square of each price.
 */
void main() {
  List<int> numbers = [10, 20, 30, 40];
  numbers.forEach((number) {
    print(number * number);
  });
}
