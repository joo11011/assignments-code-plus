// task 1
void execute(Function function) {
  function();
}

//task 2
int square(int number) => number * number;
String greet(String name) => "Hello $name";
bool isEven(int number) => number % 2 == 0;

//task 3
void calculate(int x, int y, Function(int, int) operation) {
  print("Result: ${operation(x, y)}");
}

void main() {
  execute(() {
    print("Hello Dart!");
  });

  calculate(2, 3, (x, y) => x + y); // Addition
  calculate(4, 3, (x, y) => x - y); // Subtraction
  calculate(6, 3, (x, y) => x * y); // Multiplication
}
