import 'package:belajar_dart/extension/animal.dart';
import 'package:belajar_dart/extension/extensions.dart';

void main(List<String> args) {
  // membuat objek animal dengan nama, umur, dan berat badan;
  Animal dog = Animal('Dog', 6, 20.0);

  //memanggil metode  dari kelas aslinya
  dog.speak();
  dog.displayInfo();
  //memanggil dari metode dari extension

  dog.run();
  dog.eat('bone');
  dog.growOlder();
  dog.gainWeight(3.0);
}