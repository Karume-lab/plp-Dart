// Define superclass
class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

// Define subclass
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

// Define interface
abstract class Employee {
  void calculateSalary();
}

// Implement interface
class Manager implements Employee {
  @override
  void calculateSalary() {
    // Salary calculation logic
  }
}

// Initialize object from file
class EmployeeData {
  EmployeeData(String filePath) {
    // Read data from file and initialize objects
  }
}

// Method demonstrating loop
void loopDemo() {
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print('Number: $number');
  }
}

void main() {
  // Create and use objects to demonstrate various features
  Cat cat = Cat();
  cat.makeSound();

  Manager manager = Manager();
  manager.calculateSalary();

  EmployeeData employeeData = EmployeeData('employee_data.csv');

  loopDemo();
}
