void main () {
  var primaList = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97
  ];

  var searchNumber = 97;
  print('Bilangan prima di antara 1-100: $searchNumber');
  for (int i = 0; i <primaList.length;i++){
    if (searchNumber == primaList[i]){
      print('$searchNumber adalah prima ke -${i+1}');
    break;
    }
    print('$searchNumber != ${primaList[i]}');
  }
}