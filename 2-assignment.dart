// Task 1: Function to add two numbers
double addTwo(double num1, double num2) {
  return num1 + num2;
}

// Task 2: Function to subtract two numbers
double subtractTwo(double num1, double num2) {
  return num1 - num2;
}

// Task 3: Function to multiply two numbers
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

// Task 4: Function to divide two numbers
double divideTwo(double num1, double num2) {
  if (num2 == 0) {
    throw ArgumentError('Cannot divide by zero');
  }
  return num1 / num2;
}

// Task 5: Function to get the length of a string
int stringLength(String text) {
  return text.length;
}

// Task 6: Function to get the first element of a list
dynamic getFirstElement(List list) {
  if (list.isEmpty) {
    throw ArgumentError('List is empty');
  }
  return list.first;
}

void main() {
  print('Task 1: ${addTwo(5, 3)}');
  print('Task 2: ${subtractTwo(10, 4)}');
  print('Task 3: ${multiplyTwo(7, 2)}');
  print('Task 4: ${divideTwo(15, 3)}');
  print('Task 5: ${stringLength("Hello")}');
  print('Task 6: ${getFirstElement([1, 2, 3, 4, 5])}');
}
