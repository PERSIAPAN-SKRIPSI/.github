void main() {
  // Higher-order function yang menerima fungsi sebagai parameter
  List<int> generateFibonacci(int n, Function(int) fibFunction) {
    List<int> fibonacciSequence = [];
    for (int i = 0; i < n; i++) {
      fibonacciSequence.add(fibFunction(i));
    }
    return fibonacciSequence;
  }

  // Fungsi lambda untuk menghitung Fibonacci
  int fibonacci (int n) {
    if (n <= 1) return n;
      return fibonacci(n - 1) + fibonacci(n - 2);
  }

  // Memanggil Higher-order function untuk membuat deret Fibonacci
  List<int> fibSequence = generateFibonacci(10, fibonacci);
  print(fibSequence);  // Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
}
