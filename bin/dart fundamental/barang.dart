
import 'package:intl/intl.dart';
class Barang {
  String _nama;
  int _stok;
  double _hargaPerUnit;
  String _kategori;
  double _diskon = 0.0; // Diskon default

  Barang(this._nama, this._stok, this._hargaPerUnit, this._kategori);

  // Getter untuk nama barang
  String get nama => _nama;

  // Setter untuk nama barang (validasi tidak boleh kosong)
  set nama(String value) {
    if (value.isNotEmpty) {
      _nama = value;
    } else {
      print('Nama barang tidak boleh kosong!');
    }
  }

  // Getter untuk stok barang
  int get stok => _stok;

  // Setter untuk stok (validasi stok tidak boleh negatif)
  set stok(int value) {
    if (value >= 0) {
      _stok = value;
    } else {
      print('Stok tidak boleh negatif!');
    }
  }

  // Getter untuk harga per unit
  double get hargaPerUnit => _hargaPerUnit;

  // Setter untuk harga per unit (validasi harga tidak boleh negatif)
  set hargaPerUnit(double value) {
    if (value >= 0) {
      _hargaPerUnit = value;
    } else {
      print('Harga per unit tidak boleh negatif!');
    }
  }

  // Getter untuk diskon
  double get diskon => _diskon;

  // Setter untuk diskon (validasi diskon tidak boleh lebih dari 100%)
  set diskon(double value) {
    if (value >= 0 && value <= 100) {
      _diskon = value;
    } else {
      print('Diskon harus di antara 0 dan 100%!');
    }
  }

  // Fungsi untuk menampilkan informasi barang
  void tampilkanInfo() {
    print('Nama Barang: $_nama');
    print('Stok: $_stok');
    print('Harga per Unit: ${formatCurrency(_hargaPerUnit)}');
    print('Kategori: $_kategori');
    print('Diskon: $_diskon%');
  }

  // Fungsi untuk menghitung total nilai stok barang ini (dengan diskon)
  double nilaiStok() {
    double hargaSetelahDiskon = _hargaPerUnit - (_hargaPerUnit * _diskon / 100);
    return _stok * hargaSetelahDiskon;
  }

  // Fungsi untuk menambah stok
  void tambahStok(int jumlah) {
    if (jumlah > 0) {
      _stok += jumlah;
      print('Stok $_nama berhasil ditambah sebanyak $jumlah.');
    } else {
      print('Jumlah penambahan stok harus positif!');
    }
  }

  // Fungsi untuk memperbarui harga barang
  void perbaruiHarga(double hargaBaru) {
    if (hargaBaru > 0) {
      _hargaPerUnit = hargaBaru;
      print('Harga $_nama diperbarui menjadi ${formatCurrency(hargaBaru)}.');
    } else {
      print('Harga baru harus lebih besar dari 0!');
    }
  }

  // Fungsi untuk memformat mata uang (Rp)
  String formatCurrency(double amount) {
    final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 2);
    return formatter.format(amount);
  }
}

void main() {
  // Membuat list untuk menyimpan barang-barang di gudang
  List<Barang> daftarBarang = [];

  // Menambahkan barang ke dalam daftar
  var barang1 = Barang("Laptop", 10, 15000000, "Elektronik");
  var barang2 = Barang("Smartphone", 25, 5000000, "Elektronik");
  var barang3 = Barang("Kursi Kantor", 50, 750000, "Furnitur");

  // Memberikan diskon pada barang tertentu
  barang2.diskon = 10; // Diskon 10% untuk Smartphone

  daftarBarang.add(barang1);
  daftarBarang.add(barang2);
  daftarBarang.add(barang3);

  // Menampilkan informasi semua barang di dalam daftar
  for (var barang in daftarBarang) {
    barang.tampilkanInfo();
    print("Total Nilai Stok Barang (Setelah Diskon): ${barang.formatCurrency(barang.nilaiStok())}");
    print("-----");
  }

  // Menambah stok Laptop
  barang1.tambahStok(5);

  // Memperbarui harga kursi kantor
  barang3.perbaruiHarga(800000);
}
