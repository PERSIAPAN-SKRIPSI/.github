void main(List<String> args) {
  //kita buat varibelnya 

  var a = 10;
  var b = 20;
  var c = 10;

  //esekusi operator perbandingan
  // => , <=,  !=, ==, <, >

  print('a==b,:${a == b}'); //false
  print('a!=b,:${a!= b}'); //true
  print('a < b,${a < b}'); //true
  print('a > b,${a > b}'); //false  
  print('a <= c: ${a <= c}'); // true
  print('a >= c: ${a >= c}'); // true

  //menggunakan operator perbandingan adlam kondisi
  if (a < b && a==c) {
    print('a lebih kecil dari b dan sama dengan c');
  
  }

  //list perbandingan
}