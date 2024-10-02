import '../models/produk.dart';
import '../models/pembelian.dart';

class PenjualanService {
  List<Pembelian> _riwayatPenjualan = [];

  void prosesPenjualan(Produk produk, int jumlah) {
    if (produk.stok >= jumlah) {
      produk.updateStok(jumlah);
      Pembelian pembelian = Pembelian(produk, jumlah);
      _riwayatPenjualan.add(pembelian);
    } else {
      throw Exception("Stok tidak cukup");
    }
  }

  double totalPenjualan() {
    return _riwayatPenjualan.fold(0, (total, pembelian) => total + pembelian.totalHarga());
  }
}
