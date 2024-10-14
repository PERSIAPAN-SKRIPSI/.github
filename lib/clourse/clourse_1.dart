void main() {
  var clourseExample = calculate(40);
  clourseExample();
  clourseExample();

}
Function calculate(base){
  var count = 1;
  return ()=> print('Value is ${base + count++}');
}
