void main() {
  // int data type example
  int age = 25;
  print('Age: $age');

  // double data type example
  double temperature = 27.5;
  print('Temperature: $temperature');

  // String data type example
  String name = 'Danie Karume';
  print('Name: $name');

  // List data type example
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  // Map data type example
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 30,
    'city': 'New York'
  };
  print('Person: $person');

  // Accessing elements in List
  print('First number: ${numbers[0]}');

  // Accessing elements in Map
  print(
      'Name: ${person['name']}, Age: ${person['age']}, City: ${person['city']}');
}
