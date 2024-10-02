import 'produk.dart';

class Pembelian {
  Produk produk;
  int jumlah;

  Pembelian(this.produk, this.jumlah);

  double totalHarga() {
    return produk.harga * jumlah;
  }
}
