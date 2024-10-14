import 'dart:async';
import 'dart:io';

// Model Coffee untuk mendefinisikan data kopi
class Coffee {
  final String name;
  final double price;

  Coffee(this.name, this.price);
}

// Fungsi untuk menampilkan menu kopi
Future<List<Coffee>> getCoffeeMenu() async {
  // Simulasi delay seperti mengambil data dari API
  await Future.delayed(Duration(seconds: 2));

  return [
    Coffee('Espresso', 20000),
    Coffee('Cappuccino', 25000),
    Coffee('Latte', 23000),
    Coffee('Americano', 22000),
  ];
}

// Fungsi untuk melakukan pemesanan kopi
Future<String> orderCoffee(String coffeeName) async {
  // Simulasi proses pembuatan kopi dengan delay
  await Future.delayed(Duration(seconds: 3));

  return 'Pesanan kopi $coffeeName Anda sudah siap!';
}

// Fungsi untuk meminta input dari pengguna
Future<void> makeOrder() async {
  print('Loading menu...');

  // Mengambil dan menampilkan menu
  List<Coffee> menu = await getCoffeeMenu();
  for (int i = 0; i < menu.length; i++) {
    print('${i + 1}. ${menu[i].name} - Rp. ${menu[i].price}');
  }

  // Meminta pengguna untuk memilih kopi berdasarkan nomor menu
  print('\nPilih nomor kopi yang ingin Anda pesan:');
  String? input = stdin.readLineSync();
  int choice = int.tryParse(input ?? '') ?? 0;

  // Validasi input
  if (choice < 1 || choice > menu.length) {
    print('Pilihan tidak valid. Silakan coba lagi.');
    return;
  }

  // Mengambil kopi yang dipilih dari menu
  Coffee selectedCoffee = menu[choice - 1];

  print('\nMemesan ${selectedCoffee.name}...');

  // Melakukan pemesanan kopi
  String result = await orderCoffee(selectedCoffee.name);
  print(result);
}

// Fungsi utama untuk menjalankan program
void main() async {
  print('Selamat datang di Coffee Shop!');

  await makeOrder();
}
