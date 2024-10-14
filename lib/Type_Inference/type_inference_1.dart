void main() {
  // Dart akan menginfer tipe variabel berdasarkan nilai yang diberikan

  // Infer menjadi tipe int
  var age = 25; 
  print("Tipe dari 'age' adalah: ${age.runtimeType}");

  // Infer menjadi tipe double
  var height = 1.75; 
  print("Tipe dari 'height' adalah: ${height.runtimeType}");

  // Infer menjadi tipe String
  var name = "John Doe"; 
  print("Tipe dari 'name' adalah: ${name.runtimeType}");

  // Infer menjadi tipe List<int>
  var numbers = [1, 2, 3, 4]; 
  print("Tipe dari 'numbers' adalah: ${numbers.runtimeType}");

  // Infer menjadi tipe Map<String, int>
  var scores = {
    "Math": 90,
    "English": 85,
  };
  print("Tipe dari 'scores' adalah: ${scores.runtimeType}");
}
