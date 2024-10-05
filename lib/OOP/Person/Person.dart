class Person {
  // Private property menggunakan underscore (_) untuk menjaga enkapsulasi
  String _name;
  int _age;

  //Constructor
  Person(this._age, this._name);

  //Getter untuk name
  String get name => _name;
  //
  set name(String buatName){
    if(buatName.isNotEmpty) {
      _name = name;
    }
    else
      {
        print('Cannot Name Be empty');
      }
  }
  //Getter untuk age
  int get age => _age;
  // Setter untuk properti _age, dengan validasi sederhana
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print('Age must be greater than 0');
    }
  }
  // Method untuk menampilkan informasi
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}