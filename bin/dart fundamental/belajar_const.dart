const num pi = 3.14;

void main (){
  var radius = 32;
  print ('luas dari lingkaran : $radius =${calculateCircleArea(radius)}');

}
num calculateCircleArea (num radius ) => pi * radius * radius;