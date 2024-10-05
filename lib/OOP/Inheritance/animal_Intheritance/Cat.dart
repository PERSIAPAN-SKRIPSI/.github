import 'package:belajar_dart/OOP/Animal/Animal.dart';

class Cat extends Animal {
  final String furColor;

  // Constructor yang benar
  Cat(super.name, super.age, super.weight, this.furColor);

  void walk() {
    print('$name is walking');
  }
}