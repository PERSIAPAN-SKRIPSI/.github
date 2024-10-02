import '../services/penjualan_service.dart';
import '../models/produk.dart';

class PenjualanController {
  PenjualanService _penjualanService = PenjualanService();

  void jualProduk(Produk produk, int jumlah) {
    try {
      _penjualanService.prosesPenjualan(produk, jumlah);
      print('Penjualan berhasil! Total penjualan: ${_penjualanService.totalPenjualan()}');
    } catch (e) {
      print('Gagal menjual produk: ${e.toString()}');
    }
  }

  double getTotalPenjualan() {
    return _penjualanService.totalPenjualan();
  }
}
