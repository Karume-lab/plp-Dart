class Person {
  String firstName;
  String lastName;
  // private
  int _age;

  Person(this.firstName, this.lastName, this._age);
  String intro() {
    return "My name is $firstName $lastName";
  }

  // Getter
  int get age => this._age;

  // Setter
  set age(int age) {
    this._age = age;
  }
}

void main(List<String> args) {
  Person p1 = Person("Daniel", "Karume", 21);
  // print(p1.intro());
  print(p1.age);
  p1.age = 23;
  print(p1.age);
}
