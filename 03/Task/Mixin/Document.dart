import 'Printer.dart';

class Document with Printer {
  @override
  void printDoc() {
    print("This Is Document");
  }
}
