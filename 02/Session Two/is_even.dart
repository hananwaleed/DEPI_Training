/*
Write a function isEven(int n) that returns true 
if the number is even, using arrow syntax.
*/

void main() {
  print(isEven(4)); // true
  print(isEven(5)); // false
}

bool isEven(int n) => n % 2 == 0;
