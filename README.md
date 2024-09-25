# Strings

Kita telah banyak menggunakan String pada materi-materi sebelumnya dan seperti kita tahu, _String_ digunakan untuk menyimpan data dalam bentuk teks. _String_ pada Dart dapat didefinisikan dengan menggunakan tanda petik satu maupun petik dua.

```dart
String singleQuote = 'Ini adalah String';
String doubleQuote = "Ini juga String";
```

Anda dapat menggunakan tanda petik secara bergantian, khususnya jika Anda memiliki teks yang mengandung tanda petik.

```dart
void main() {
  print('"What do you think of Dart?" he asked');
}
```

> answer: `"What do you think of Dart?" he asked`

Lalu bagaimana jika teks kita memiliki kedua tanda petik ini?

```dart
print('"I think it's great!" I answered confidently');
```

Tentunya kode di atas akan menghasilkan eror. Solusinya, gunakanlah _backslash_ () untuk mengurangi ambiguitas dalam tanda petik. Mekanisme ini juga dikenal dengan nama _**escape string**_. Sehingga kode di atas akan menjadi seperti berikut:

```dart
void main() {  print('"I think it\'s great!" I answered confidently');}
```

_Backslash_ sebelum tanda petik ini akan mengatakan kepada Dart bahwa itu hanyalah tanda petik dan tidak boleh ditafsirkan sebagai pembatas _string_. Selain tanda petik, _backslash_ juga berguna untuk mengabaikan simbol lain yang menimbulkan ambigu di dalam _string_, contohnya seperti _backslash_ itu sendiri.

```dart
void main() {  print("Windows path: C:\\Program Files\\Dart");}
```

Fitur lain dari _String_ adalah _**String interpolation**_ di mana kita bisa memasukkan nilai dari variabel atau _expression_ ke dalam _string_. _Interpolation_ ini bisa kita terapkan dengan simbol $.

```dart
void main() {
  var name = 'Messi';
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');
}
// Hello Messi, nice to meet you.
//1 + 1 = 2
```

Jika Anda perlu menampilkan harga dalam dollar, maka apa yang akan Anda lakukan? _Yup_, _backslash_ akan memberitahu Dart mana tanda $ sebagai _interpolation_ atau sebagai mata uang. Selain itu Anda juga menggunakan cara seperti berikut:

```
void main() {  print(r'Dia baru saja membeli komputer seharga $1,000.00');}
```

Huruf ‘_**r**_’ sebelum _String_ akan memberitahu Dart untuk menganggap _String_ sebagai _raw_, yang berarti akan mengabaikan _interpolation_.

Selain itu, kita juga bisa menambahkan sebuah _Unicode_ ke dalam _String_. Pada Dart _Unicode_ ini dikenal dengan _**runes**_. _Unicode_ mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol yang digunakan dalam semua sistem penulisan dunia. Cara umum untuk mengekspresikan unicode adalah \uXXXX, di mana _**XXXX**_ adalah nilai heksadesimal 4 digit. Misalnya karakter hati (♥) adalah _u2665_

```dart
void main() {
  print('Hi \u2665');
}

/// Output:
/// Hi ♥
```

Jika ingin melihat sumber dari keseluruhan _interactive code_ di atas, Anda dapat mengunjungi tautan berikut.

- [String - Code](https://github.com/dicodingacademy/a191-dart-code/tree/main/03_dart_fundamental/05_strings "‌")

Berikut tautan yang dapat Anda pelajari untuk mendalami materi terkait Strings.

- [Built-in types - Strings](https://dart.dev/language/built-in-types#strings "‌")
