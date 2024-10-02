// void main (){
//   var isRaining = false;
//   print('prepare before going to office');
//   if(isRaining){
//     print('oh no yess');
//   }
//   print('yes yess');
// }

void main (){
  var score = 90;

  print('Nilai anda : ${calculateScore(score)}');
}
String calculateScore(num score){
  if (score > 95 ){
    return 'A';
  }
  else if(score > 80){
    return 'B';
  }
  else if ( score >70){
    return 'C';
  }
  else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  }
return 'E';
}