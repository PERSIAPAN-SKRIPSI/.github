import '../lib/models/produk.dart';
import '../lib/controllers/penjualan_controller.dart';
import '../lib/utils/format_utils.dart';

void main() {
  // Inisialisasi produk
  Produk produk1 = Produk("Laptop", 15000000, 10);
  Produk produk2 = Produk("Smartphone", 5000000, 20);

  // Inisialisasi PenjualanController
  PenjualanController penjualanController = PenjualanController();

  // Simulasi penjualan
  try {
    // Penjualan pertama
    print("Menjual 2 unit Laptop...");
    penjualanController.jualProduk(produk1, 2);
    print("Sisa stok Laptop: ${produk1.stok}");

    // Penjualan kedua
    print("\nMenjual 5 unit Smartphone...");
    penjualanController.jualProduk(produk2, 5);
    print("Sisa stok Smartphone: ${produk2.stok}");

    // Penjualan ketiga dengan stok tidak cukup
    print("\nMenjual 15 unit Laptop...");
    penjualanController.jualProduk(produk1, 15);
    print("Sisa stok Laptop: ${produk1.stok}");

  } catch (e) {
    print("Terjadi kesalahan: ${e.toString()}");
  }

  // Menampilkan total penjualan yang diformat
  double totalPenjualan = penjualanController.getTotalPenjualan();
  print("\nTotal penjualan: ${FormatUtils.formatUang(totalPenjualan)}");
}
