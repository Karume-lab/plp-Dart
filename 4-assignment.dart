import 'dart:io';

class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

abstract class Employee {
  void calculateSalary();
}

class Manager implements Employee {
  @override
  void calculateSalary() {
    print('Calculating manager\'s salary...');
  }
}

class EmployeeData {
  List<String> employees = [];

  EmployeeData(String filePath) {
    File file = File(filePath);
    employees = file.readAsLinesSync();
  }

  void printEmployees() {
    print('Employee list:');
    for (String employee in employees) {
      print(employee);
    }
  }
}

void loopDemo() {
  print('Loop demonstration:');
  for (int i = 1; i <= 5; i++) {
    print('Iteration $i');
  }
}

void main() {
  Animal animal = Animal();
  animal.makeSound();

  Cat cat = Cat();
  cat.makeSound();

  Manager manager = Manager();
  manager.calculateSalary();

  EmployeeData employeeData = EmployeeData('employees.txt');
  employeeData.printEmployees();

  loopDemo();
}
