class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student Name: $name');
    print('Student Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher Name: $name');
    print('Teacher Age: $age');
    print('Subject: $subject');
  }
}

class School {
  void createAndPrint() {
    Student student = Student('John', 15, 10);

    Teacher teacher = Teacher('Ms. Smith', 35, 'Math');

    print('Student Information:');
    student.printStudentInfo();
    print('');

    print('Teacher Information:');
    teacher.printTeacherInfo();
  }
}

void main() {
  School school = School();
  school.createAndPrint();
}
