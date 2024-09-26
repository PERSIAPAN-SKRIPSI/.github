## Functions

_Functions_ pada Dart digunakan untuk menghasilkan output berdasarkan input tertentu yang diberikan, selain itu juga sebagai blok kode atau prosedur yang dapat digunakan kembali. Sadar atau tidak, sebenarnya kita telah mengimplementasikan beberapa _functions_ pada kode kita. Semua program Dart dimulai dari fungsi main(). main() adalah contoh fungsi utama yang selalu kita gunakan. Selain itu, print() juga termasuk fungsi.

```
print('Hello Dart!');
```

‌

Fungsi print() akan mengambil nilai _String_ atau objek lainnya dan menampilkannya ke konsol. Untuk mencetak sesuatu ke konsol sebenarnya dibutuhkan beberapa instruksi yang lebih _low-level_, namun kita menjadi sangat terbantu dengan adanya fungsi print() ini dan dapat menggunakannya secara berulang.

Untuk mendeklarasikan fungsi, caranya sama dengan penulisan fungsi main() yaitu dengan menentukan tipe nilai balik atau _return value_ lalu nama fungsi dan _parameter_ inputnya.

```
returnType functionName(type param1, type param2, ...) {  return result;}
```

Setiap fungsi Dart selalu mengembalikan nilai. Namun ada satu tipe data khusus yang bisa kita lihat pada fungsi main yaitu _return type **void**_. _Keyword_ void berarti fungsi tersebut tidak menghasilkan output atau nilai kembali. Biasanya fungsi seperti ini digunakan untuk kumpulan instruksi atau prosedur yang berulang dan sering digunakan.

Setelah fungsi dibuat, selanjutnya kita bisa memanggilnya pada fungsi main() atau pada bagian program lain yang Anda inginkan.

```dart
void main() {
  greet();
}

void greet() {
  print('Hello!');
}

/// Output:
/// Hello!Pada contoh sederhana di atas fungsi greet() memang belum menghemat banyak kode yang Anda tulis. Namun, apabila Anda memiliki 30 instruksi greet dan ternyata versi terbaru aplikasi Anda memerlukan perubahan teks yang ditampilkan, Anda cukup ubah satu baris kode saja, tak perlu 30 baris kode yang berbeda. Selain itu, jika Anda memiliki kode yang cukup panjang akan lebih baik jika kode tersebut dimasukkan ke dalam fungsi supaya lebih mudah dibaca.

Function parameters
Pada beberapa kasus fungsi bisa memerlukan input data untuk diproses. Input data ini kita kenal sebagai parameter. Untuk menambahkan parameter ke dalam fungsi, kita bisa memasukkannya ke dalam tanda kurung. Sebuah fungsi bisa menerima nol, satu, atau beberapa parameter.

Contoh penggunaan parameter pada fungsi yang pernah kita lihat adalah pada fungsi print().

print('Hello Dart!');
Berikut ini adalah contoh fungsi dengan dua parameter.
```

```dart
void main() {
  greet('Dicoding', 2015);
}

void greet(String name, int bornYear) {
  var age = 2023 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

/// Output:
/// Halo Dicoding! Tahun ini Anda berusia 8 tahun
```

Sebuah fungsi juga bisa menghasilkan output atau mengembalikan nilai. Fungsi yang mengembalikan nilai ditandai dengan definisi _return type_ selain _void_ dan memiliki _keyword_ return. Contohnya seperti berikut.

```dart
void main() {
  var firstNumber = 7;
  var secondNumber = 10;
  print(
      'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

/// Output:
/// Rata-rata dari 7 & 10 adalah 8.5
```

‌

Jika fungsi hanya memiliki satu baris kode atau instruksi di dalamnya, maka bisa disingkat dengan anotasi =>. Ini juga dikenal dengan nama arrow syntax.

```
double average(num num1, num num2) => (num1 + num2) / 2;void greeting() => print('Hello');
```

### Optional parameters

Anda memiliki fungsi seperti berikut:

```
void greetNewUser(String name, int age, bool isVerified)
```

Satu-satunya cara untuk bisa memanggil fungsi di atas adalah dengan cara berikut:

```
greetNewUser('Widy', 20, true);
```

Namun, Dart mendukung _**optional parameter**_, di mana kita tidak wajib mengisi parameter yang diminta oleh fungsi. Untuk bisa membuat parameter menjadi opsional, kita perlu memasukkannya ke dalam kurung siku seperti contoh berikut:

```
void greetNewUser([String name, int age, bool isVerified])
```

Cara ini disebut dengan _**positional optional parameters**_. Dengan _optional parameter_ seperti di atas kita bisa memanggil fungsi seperti berikut:

```
greetNewUser('Widy', 20, true);greetNewUser('Widy', 20);greetNewUser('Widy');greetNewUser();
```

Setiap parameter yang tidak dimasukkan akan memiliki nilai _**null**_. Namun sejak versi 2.12, Dart memiliki fitur _**null safety**_ di mana suatu variabel secara _default_ tidak bisa memiliki nilai null. Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data supaya bisa menyimpan nilai null atau memberikan nilai parameter default. Nilai ini akan digunakan jika kita tidak memasukkan parameternya.

```
void greetNewUser([String? name, int? age, bool isVerified = false]) {}
```

Note : Kita akan membahas lebih dalam fitur null safety pada materi “Null Safety”.

Dengan cara ini, urutan parameter masih perlu diperhatikan sehingga jika kita hanya ingin mengisi parameter terakhir, kita perlu mengisi parameter sebelumnya dengan _null_.

```
greetNewUser(null, null, true);
```

Untuk mengatasi masalah di atas kita bisa memanfaatkan _**named optional parameters**_. Pada opsi ini kita menggunakan kurung kurawal pada parameter.

```
void greetNewUser({String? name, int? age, bool? isVerified})
```

Dengan cara ini Anda bisa memasukkan parameter tanpa mempedulikan urutan parameter dengan menyebutkan nama parameternya.

```
greetNewUser(name: 'Widy', age: 20, isVerified: true);greetNewUser(name: 'Widy', age: 20);greetNewUser(age: 20);greetNewUser(isVerified: true);
```

Perhatikan bahwa parameter ini bersifat opsional dan secara default akan bernilai null. Untuk memenuhi _null safety_, Anda bisa menggunakan cara seperti sebelumnya, atau menandai parameter wajib diisi dengan keyword **required**.

```
void greetNewUser({required String name, required int age, bool isVerified = false}) {}
```

Jika ingin melihat sumber dari keseluruhan _interactive code_ di atas, Anda dapat mengunjungi tautan berikut.

- [Function - Code](https://github.com/dicodingacademy/a191-dart-code/tree/main/03_dart_fundamental/09_functions "‌")

Selain itu, ada beberapa tautan yang dapat Anda baca apabila ingin menambah wawasan terkait dengan Function.

- [Introduction - Functions](https://dart.dev/language#functions "‌")
- [Functions](https://dart.dev/language/functions "‌")