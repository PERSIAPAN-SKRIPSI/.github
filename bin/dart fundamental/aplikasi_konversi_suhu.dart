import 'dart:io';

void main() {
  // Perulangan agar pengguna bisa memilih beberapa kali
  while (true) {
    // Menampilkan opsi konversi
    print('\nPilih jenis konversi:');
    print('1. Fahrenheit ke Celsius');
    print('2. Fahrenheit ke Reamur');
    print('3. Fahrenheit ke Kelvin');
    print('4. Keluar');

    // Menerima pilihan pengguna
    stdout.write('Masukkan pilihan (1/2/3/4): ');
    String? pilihan = stdin.readLineSync();

    // Validasi apakah pilihan adalah 1, 2, 3, atau 4
    if (pilihan == '1' || pilihan == '2' || pilihan == '3' || pilihan == '4') {
      // Jika pengguna memilih opsi keluar (4), hentikan perulangan
      if (pilihan == '4') {
        print('Terima kasih telah menggunakan aplikasi konversi suhu.');
        break;
      }

      // Meminta pengguna untuk memasukkan suhu dalam Fahrenheit
      stdout.write('Masukkan suhu dalam Fahrenheit: ');
      String? inputFahrenheit = stdin.readLineSync();

      // Memastikan input tidak null dan valid
      if (inputFahrenheit != null && double.tryParse(inputFahrenheit) != null) {
        double fahrenheit = double.parse(inputFahrenheit);

        // Melakukan konversi sesuai pilihan pengguna
        switch (pilihan) {
          case '1':
            double celsius = (5 / 9) * (fahrenheit - 32);
            print('$fahrenheit derajat Fahrenheit = ${celsius.toStringAsFixed(2)} derajat Celsius');
            break;
          case '2':
            double reamur = (4 / 9) * (fahrenheit - 32);
            print('$fahrenheit derajat Fahrenheit = ${reamur.toStringAsFixed(2)} derajat Reamur');
            break;
          case '3':
            double kelvin = (5 / 9) * (fahrenheit - 32) + 273.15;
            print('$fahrenheit derajat Fahrenheit = ${kelvin.toStringAsFixed(2)} derajat Kelvin');
            break;
        }
      } else {
        print('Input suhu tidak valid, harap masukkan angka yang valid.');
      }
    } else {
      // Jika input pilihan tidak valid (bukan 1, 2, 3, atau 4)
      print('Pilihan tidak valid. Harap pilih angka 1, 2, 3, atau 4.');
    }
  }
}
