class Produk {
  String nama;
  double harga;
  int stok;

  Produk(this.nama, this.harga, this.stok);

  void updateStok(int jumlah) {
    if (jumlah <= stok) {
      stok -= jumlah;
    } else {
      throw Exception("Stok tidak cukup");
    }
  }
}
