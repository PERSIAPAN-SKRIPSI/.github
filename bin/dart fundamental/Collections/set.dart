void main (){
  // var numberSet = {1,4,6,7,8};
  //
  // //menambahkan data di set tersebut
  // numberSet.add(9);
  // //untuk menghapus data yang ada di set tersebut
  // numberSet.remove(1);
  // numberSet.addAll({1,10,11,20,4});
  // //mencoba hapus nilai menggunakan fungsi elementAt()
  // print(numberSet);
  // print(numberSet.elementAt(4));


  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);
  print("union: $union");
  print('intersection:$intersection');

}