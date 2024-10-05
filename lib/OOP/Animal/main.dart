import 'package:belajar_dart/OOP/Animal/Animal.dart';

void main() {
  // Membuat objek dari kelas Animal
  var animal = Animal('Lion', 3, 150.5);

  // Mengakses dan menggunakan properti dan metode
  print('Animal name: ${animal.name}');
  print('Animal weight: ${animal.weight}');

  animal.eat();
  print('Animal weight after eating: ${animal.weight}');
}