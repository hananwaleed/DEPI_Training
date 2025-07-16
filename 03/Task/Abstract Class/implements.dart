import 'Shape.dart';

class Implements extends Shape {
  double side;
  Implements(this.side);
  @override
  double area() {
    return side * side;
  }
}
