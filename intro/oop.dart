class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);
  String intro(){
    return "My name is $firstName $lastName";
  }
}

void main(List<String> args) {
  Person p1 = Person("Daniel", "Karume");
  var p2 = Person("John", "Doe");
  // print(p1.firstName);
  print(p1.intro());
  print(p2.intro());
}
