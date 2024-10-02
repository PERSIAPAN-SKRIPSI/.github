// void main (){
//   List<String> stringList = ['hello', 'aku ', 'Isol'];
//
//   stringList.forEach((s)=> print(s));
// }
void main () {
  // List<String> stringList = ['hello', 'aku ', 'Isol'];
  //
  // // menambahkan  data di akhir list
  // stringList.add('semester45');
  //  stringList.insert(0,'selamat datang');
  // print(stringList);

  //Spread Operator
  var favoriteBuah = ["Jeruk","Apel","Mangga"];
  var others = ["Cake", "Pisang","Donut"];
  var allFavorites = [ ...favoriteBuah,...others];
  print(allFavorites);
}