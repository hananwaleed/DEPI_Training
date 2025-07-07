// Dart Program to perform basic arithmetic operations
// Functions: addition, subtraction, multiplication, division, and print a name.

void main() {
  print("Multiplication Result: ${multiply(20, 40)}");
  print("Addition Result      : ${add(20, 40)}");
  print("Division Result      : ${divide(40, 20)}");
  print("Subtraction Result   : ${subtract(20, 10)}");
  greetUser("Hanan");
}

// Function to multiply two integers
int multiply(int a, int b) {
  return a * b;
}

// Function to add two integers
int add(int a, int b) {
  return a + b;
}

// Function to divide two integers with zero check
double divide(int a, int b) {
  if (b == 0) {
    print("Error: Cannot divide by zero.");
    return double.nan;
  }
  return a / b;
}

// Function to subtract one integer from another
int subtract(int a, int b) {
  return a - b;
}

// Function to greet the user
void greetUser(String name) {
  print("Welcome, $name!");
}
