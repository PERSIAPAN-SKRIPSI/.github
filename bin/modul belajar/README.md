# **Exceptions**

Sebuah aplikasi yang sudah berjalan mungkin mengalami eror dan _crash_. Kondisi eror pada saat aplikasi berjalan (_runtime_) ini dikenal dengan _**exception**_. Ketika _exception_ terjadi aplikasi akan dihentikan dan program setelahnya juga tidak akan dieksekusi.

Salah satu contoh _exception_ yang mungkin terjadi adalah pada aplikasi kalkulator. Di mana menurut prinsip matematika kita tidak bisa membagi bilangan lain dengan bilangan nol (0).

```dart
void main() {
  var a = 7;
  var b = 0;
  print(a ~/ b);
}
```

```dart
/*
Unhandled exception:
IntegerDivisionByZeroException
# 0 int.~/ (dart:core-patch/integers.dart:24:7)
# 1 main (file:///home/glot/main.dart:4:11)
# 2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
# 3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)
*/
```

Sebagai _developer_, tentunya menjadi tugas kita untuk memastikan aplikasi tetap berjalan bagaimana pun kondisinya, termasuk mengatasi ketika terjadi _exception_. Lantas bagaimana?

Untuk menangani _exception_, mari gunakan _**try**_ dan _**catch**_. Pindahkan kode yang berpeluang menimbulkan _exception_ ke dalam blok try.

---

```dart
try {  var a = 7;  var b = 0;  print(a ~/ b);}
```

Kode di atas masih belum lengkap karena di dalam sebuah blok try ada kode yang diasumsikan berpeluang menjadi _exception_ sehingga perlu ditangani. Pada eror sebelumnya telah diketahui bahwa _exception_ yang terjadi adalah IntegerDivisionByZeroException . Sehingga kita bisa memanfaatkan _keyword_ on untuk mengatasi ketika _exception_ tersebut terjadi.

```dart
try {  var a = 7;  var b = 0;  print(a ~/ b);} on Exception {  print('Can not divide by zero.');}
```

Nah, kita telah berhasil membuat program kita aman dari _crash_ dengan memanfaatkan Exception. Blok kode on Exception di atas adalah pemanfaatan _exception_ secara umum. Namun bagaimana dengan _exception_ lainnya yang belum kita ketahui? Pada Dart sendiri telah tersedia beberapa _exception_ seperti IOException, FormatException, dsb. Untuk menangani _exception_ yang tidak diketahui secara spesifik, kita bisa menggunakan _keyword_ catch setelah blok try.

---

Kode _catch_ membutuhkan satu parameter yang merupakan objek _exception_. Kita dapat mencetak _exception_ tersebut ke layar untuk menampilkan _exception_ apa yang terjadi. Output kode di atas adalah:

```dart
Exception happened: IntegerDivisionByZeroException// atauUnsupported operation: Result of truncating division is Infinity: 7 ~/ 0
```

Selain itu, kita juga dapat menambahkan satu parameter lagi di dalam catch yang merupakan objek _stack trace_. Dari _stack trace_ ini kita bisa melihat detail _exception_ dan di baris mana _exception_ tersebut

```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }
}
```

Blok catch dapat digabungkan dengan on. Catch akan menangkap apabila tidak ada _exception_ yang memenuhi blok on yang terpasang.

### Finally

Selain _try_, _on_, dan _catch_, ada satu blok lagi yang ada dalam mekanisme _exception handling_, yaitu finally. Blok finally akan tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok _try-catch_.

```dart
void main() {
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('This line still executed');
  }
}
```