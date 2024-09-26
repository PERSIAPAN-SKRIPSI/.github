// void main () {
//   baik();
// }
//
// void baik(){
//   print('hello');
//
// }

// void main (){
//   greet('dicoding',2015);
// }
// void greet(String name , int bronYear){
//   var age = 2023 - bronYear;
//   print('hello $name! Tahun ini anda berusia $age tahun');
//
// }

void main(){
  var firstNumber = 7;
  var secondNumber = 10;
  print('rata rata dari $firstNumber & $secondNumber adalah ${average(firstNumber,secondNumber)}');
}

double average(num num1,num num2){
  return (num1+num2)/2;
}