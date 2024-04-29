// Parent class (superclass)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Some generic sound');
  }
}

// Child class (subclass)
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Woof woof!');
  }

  void wagTail() {
    print('Tail wagging');
  }
}

void main() {
  // Create an instance of the subclass
  Dog dog = Dog('Buddy', 3, 'Labrador');

  // Access inherited properties and methods
  print('Name: ${dog.name}, Age: ${dog.age}, Breed: ${dog.breed}');
  
  // Call inherited method
  dog.makeSound(); // Output: Woof woof!

  // Call subclass method
  dog.wagTail(); // Output: Tail wagging
}
