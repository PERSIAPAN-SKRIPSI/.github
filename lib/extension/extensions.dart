import 'package:belajar_dart/extension/animal.dart';

extension AnimalExtensions on Animal  {
  //kita buat atau menamabhakn sebuah fungsi 
  void run(){
    print('$name is running');
  }
  void eat(String food){
    print('$name is eating $food');
  }
  void growOlder(){
    age +=1;
    print('$name is now $age years old');
  }
    void gainWeight(double amount) {
    weight += amount;
    print('$name gained $amount kg. Now weighing $weight kg.');
  }
}