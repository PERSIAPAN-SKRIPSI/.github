## Booleans

Setelah angka dan teks, ada satu tipe data utama lagi yang penting untuk dipelajari, yaitu _**boolean**_. Nama _boolean_ ini diambil dari nama seorang matematikawan asal Inggris yang bernama _George Boole_. Beliau dikenal karena penciptaan aljabar boolean, yakni cabang aljabar di mana nilai variabel selalu benar atau salah.

_Boolean_ pada Dart dideklarasikan dengan kata kunci bool. Sesuai dengan penjelasan di atas, variabel boolean hanya bisa menyimpan dua nilai, yaitu true dan false.

```dart
bool alwaysTrue = true;var alwaysFalse = false;var notTrue = !true;bool notFalse = !false;
```

Tanda ! di atas disebut dengan operator “_**not**_” atau “_**bang**_”. Operator ini berfungsi untuk menegasikan nilai _boolean_, sederhananya membalik nilai _boolean_. Misalnya !true sama saja bernilai false.

Kita akan banyak menggunakan boolean dalam pengembangan aplikasi untuk operasi perbandingan dan juga pengondisian aplikasi.

- [main.dart](https://www.dicoding.com/academies/191/tutorials/7517?from=7510#run1-editor1 "‌")
- ```dart
  void main() {
    if (true) {
      print("It's true");
    } else {
      print("It's False");
    }
  }

  /// Output:
  /// It's true
  ```

```dart
//answer
It's true
```

Kita akan segera mempelajari tentang ini pada materi-materi selanjutnya.

Silakan kunjungi tautan berikut apabila ingin melihat sumber dari _interactive code_ di atas.

- [Booleans - Code](https://github.com/dicodingacademy/a191-dart-code/tree/main/03_dart_fundamental/06_booleans "‌")

Selain itu, info lebih lanjut terkait dengan materi ini dapat Anda pelajari pada tautan berikut.

- [Built-in types - Booleans](https://dart.dev/language/built-in-types#booleans "‌")