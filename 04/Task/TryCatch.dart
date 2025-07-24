void main() {
  int a = 10;
  int b = 0;

  try {
    double result = a / b;
    print("Result: \$result");
  } catch (e) {
    print("Error: You can't divide by zero.");
  }
}
