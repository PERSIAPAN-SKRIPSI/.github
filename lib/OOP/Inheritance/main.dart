
import 'package:belajar_dart/OOP/Inheritance/MobilSport.dart';
import 'package:belajar_dart/OOP/Inheritance/car.dart';

void main() {
  // Membuat objek dari kelas Mobil
  var mobilBiasa = car('Toyota', 2020);
  mobilBiasa.infoMobil();

  // Membuat objek dari subclass MobilSport
  var mobilSport = MobilSport('Ferrari', 2022, 350);
  mobilSport.infoMobilSport();
}