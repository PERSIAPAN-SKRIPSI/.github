void main(List<String> args) {
  //mengembalikan tipe data kalau ini int

  var eleven = int.parse('30');
  print(eleven.runtimeType);
  
  //mengembalikan tipe data Kalau ini double 
  var elevenPointDouble = double.parse('30.2');
  print(elevenPointDouble.runtimeType);
  
  //int -> string 
  var elevenAsStrings = 30.toString();
  print(elevenAsStrings.runtimeType);
  
  //mengembalikan tipe data Kalau ini double 
  var piAsStrings  = 3.33456.toStringAsFixed(2); //3.33
  print(piAsStrings);

  
}