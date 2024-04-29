int sum(int a, int b) {
  return a + b;
}

void printNumbers() {
  print('Numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void switchExample(String value) {
  switch (value) {
    case 'apple':
      print('Selected: Apple');
      break;
    case 'banana':
      print('Selected: Banana');
      break;
    case 'cherry':
      print('Selected: Cherry');
      break;
    default:
      print('Unknown fruit');
  }
}

void printNumbersReverse() {
  print('Numbers from 20 to 10:');
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

void catchError() {
  try {
    int result = 10 ~/ 0;
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  print('Task 1: Sum of 5 and 7 is ${sum(5, 7)}');

  print('\nTask 2:');
  printNumbers();

  print('\nTask 3:');
  switchExample('banana');

  print('\nTask 4:');
  printNumbersReverse();

  print('\nTask 5:');
  checkEvenOdd(13);

  print('\nTask 6:');
  List<int> numbers = [12, 45, 23, 67, 9, 34];
  print('Largest number: ${findLargest(numbers)}');

  print('\nTask 7:');
  catchError();
}
