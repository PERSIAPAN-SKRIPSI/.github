## Enumerated Types

Bagaimana kita bisa menyimpan banyak nilai konstan di satu tempat dan menanganinya secara bersamaan? Solusinya, Dart menyediakan Enumerated Type, sering disebut Enumerations atau Enums. **Enums** mewakili kumpulan konstan yang membuat kode kita lebih jelas dan mudah dibaca.

```
enum Rainbow {  red, orange, yellow, green, blue, indigo, violet} enum Weather {  sunny, cloudy, rain, storm;}
```

 Enums pada Dart memiliki beberapa properti bawaan yang dapat kita gunakan untuk menampilkan seluruh nilai dalam bentuk _list_ serta menampilkan _item_ dan indeks dari _item_ tersebut.

```dart
void main(List<String> args) {
  //kita bikin variabel enum
    var weatherForecast = Weather.cloudy;
    print(weatherForecast);
}
enum Weather {
  sunny(20),
  cloudy(40),
  rain (50);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString()=>"Today weather forecast is $name with a $rainAmount%chance of rain";

}
```

---

> PENJELASAN DARI CODE TERSEBUT
>
> 1. **Fungsi** `main` adalah titik awal eksekusi program dalam Dart.
> 2. Variabel `weatherForecast` dideklarasikan dan diinisialisasi dengan nilai `Weather.cloudy`. Ini berarti bahwa variabel tersebut akan mengambil nilai dari enum `Weather` yang disediakan.
> 3. Kemudian, variabel tersebut dicetak menggunakan fungsi `print(weatherForecast)`. Saat dicetak, variabel ini memanggil metode `toString` yang telah di-_override_ di dalam `enum`
> 4. ```
>    Today weather forecast is cloudy with a 40% chance of rain
>
>    ```

### Ringkasan:

- `enum` digunakan untuk membuat serangkaian nilai cuaca dengan persentase kemungkinan hujan.
- Variabel `weatherForecast` mengambil nilai `Weather.cloudy`.
- Metode `toString` memastikan bahwa ketika nilai `weatherForecast` dicetak, ia memberikan informasi dalam format yang lebih deskriptif.

> 1. ‌
>    - **Enum** `Weather` adalah tipe data khusus di Dart yang merepresentasikan serangkaian nilai tetap. Dalam contoh ini, ada tiga nilai di dalam enum `Weather`: `sunny`, `cloudy`, dan `rain`.
>      Masing-masing nilai dalam enum ini juga memiliki properti tambahan yang disebut `rainAmount`, yang menunjukkan persentase kemungkinan hujan:
>      - `sunny` memiliki nilai 20%,
>      - `cloudy` memiliki nilai 40%,
>      - `rain` memiliki nilai 50%.
>    - `final int rainAmount;` adalah properti dari enum ini yang menyimpan persentase kemungkinan hujan.
>    - `const Weather(this.rainAmount);` adalah konstruktor konstanta dari enum ini yang mengambil nilai `rainAmount` sebagai parameter.

### 3. **Override metode** `toString()`

```
dart
```

Salin kode

`@override String toString() => "Today weather forecast is $name with a $rainAmount% chance of rain";`

- Metode `toString()` di-_override_ untuk memberikan deskripsi yang lebih manusiawi ketika objek `Weather` dicetak. Metode ini mengembalikan string yang menyebutkan nama cuaca (`$name`) dan kemungkinan hujan (`$rainAmount%`).
- `$name` adalah properti bawaan Dart untuk enum, yang mengembalikan nama konstanta enum (`sunny`, `cloudy`, atau `rain`).

### Today weather forecast is cloudy with a 40% chance of rain

### Ringkasan:

- `enum` digunakan untuk membuat serangkaian nilai cuaca dengan persentase kemungkinan hujan.
- Variabel `weatherForecast` mengambil nilai `Weather.cloudy`.
- Metode `toString` memastikan bahwa ketika nilai `weatherForecast` dicetak, ia memberikan informasi dalam format yang lebih deskriptif.