import 'vehicle.dart';

class Car extends Vehicle {
  String model;
  Car(super.brand, super.year, this.model);
  void disPlayInfo() {
    print("brand os $brand");
    print("year is $year");
    print("model is $model");
  }
}
