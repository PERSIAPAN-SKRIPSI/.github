void main() {
//   String? favoriteFood = null;
//
//   buyAMeal(favoriteFood); // Compile error
// }
//
// void buyAMeal(String favoriteFood) {
//   print('I bought a $favoriteFood');

// untuk mengatasi erorr diatas dengan menambahkan string favoridnya
  String? favoriteFood = null;
  buyAMeal(favoriteFood); // Tidak ada error karena bisa menerima null
}
void buyAMeal(String? favoriteFood){
  if (favoriteFood != null){
    print('i bought a $buyAMeal');
  } else {
    print('I didn\'t buy anything because no favorite food was provided.');
  }
}