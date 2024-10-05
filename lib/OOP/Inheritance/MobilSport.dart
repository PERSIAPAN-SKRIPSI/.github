
import 'package:belajar_dart/OOP/Inheritance/car.dart';

class MobilSport extends car {
  int kecepatanMax;

  // Membuat constructor MobilSport
  MobilSport(String merk, int tahun, this.kecepatanMax) : super(merk, tahun);

  // Method baru khusus untuk MobilSport
  void infoMobilSport() {
    print('Mobil sport $merk keluaran tahun $tahun memiliki kecepatan maksimum $kecepatanMax km/jam.');
  }
}