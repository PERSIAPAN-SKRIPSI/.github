import 'package:belajar_dart/mixins/models/dolphin.dart';
import 'package:belajar_dart/mixins/models/fish.dart';

void main() {
  var dolphin = Dolphin();
  dolphin.move();
  dolphin.swim();
  
  
  var fish = Fish();
  fish.swim();
}