class Animal {
  String name ;
  int age;
  double weight;

  Animal(this.name, this.age,this.weight);

  // kita buat fungsi baru 
  void speak(){
    print('$name is making a sound');
  }
  void displayInfo(){
    print('Name : $name');
    print('Age : $age');
    print('Weight : $weight kg');
  }
  
}