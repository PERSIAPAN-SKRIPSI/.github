void main (){
  //Higher-Order opsi 1
 int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;

  myHigherOrderFunction('hello', sum);
   // Opsi 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
}

void myHigherOrderFunction(
  String message,
  int Function(int num1, int num2)myFunction,
  ){
    print (message);
    print(myFunction(20,2));
  }
