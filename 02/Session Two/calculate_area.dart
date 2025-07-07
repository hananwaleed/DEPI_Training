/*
Write a function calculateArea that calculates 
the area of a rectangle, given width and height.
*/

void main() {
  calculateArea(width: 10, height: 8);
}

void calculateArea({required int width, required int height}) =>
    print("Area of rectangle: ${width * height}");
