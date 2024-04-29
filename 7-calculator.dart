import 'dart:io';

// Main class for the application
class Calculator {
  MathApp() {
    print('Welcome to MathApp!');
  }

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('Division by zero is not allowed.');
    }
    return a / b;
  }

  double getUserInput(String message) {
    stdout.write(message);
    String input = stdin.readLineSync() ?? '';
    return double.tryParse(input) ?? 0.0;
  }

  void handleConditionals() {
    double x = getUserInput('Enter a number: ');

    if (x > 0) {
      print('$x is positive.');
    } else if (x < 0) {
      print('$x is negative.');
    } else {
      print('$x is zero.');
    }

    switch (x.toInt()) {
      case 0:
        print('The number is zero.');
        break;
      case 1:
        print('The number is one.');
        break;
      default:
        print('The number is neither zero nor one.');
    }
  }

  void typecastingExample() {
    double num1 = 15.5;
    int num2 = num1.toInt();
    print('Typecasting: $num1 -> $num2');
  }

  int factorial(int n) {
    if (n == 0) {
      return 1;
    }
    return n * factorial(n - 1);
  }
}

void main() {
  Calculator casio = Calculator();

  double resultAdd = casio.add(5.0, 3.0);
  print('Addition result: $resultAdd');

  double resultSubtract = casio.subtract(8.0, 3.0);
  print('Subtraction result: $resultSubtract');

  double resultMultiply = casio.multiply(4.0, 2.5);
  print('Multiplication result: $resultMultiply');

  try {
    double resultDivide = casio.divide(10.0, 2.0);
    print('Division result: $resultDivide');
  } catch (e) {
    print('Error: $e');
  }

  casio.handleConditionals();

  casio.typecastingExample();

  int n = casio
      .getUserInput('Enter a number to calculate its factorial: ')
      .toInt();
  int resultFactorial = casio.factorial(n);
  print('Factorial of $n is $resultFactorial');
}
