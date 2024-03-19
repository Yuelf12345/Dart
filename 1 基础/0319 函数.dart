void printInfo() {
  print("hello");
}

class Person {
  String name;
  int age;
  static String gender = '男';
  Person(this.name, this.age);

  static String getGender() {
    return gender;
  }

  String get getName => name;
  void set setAge(int value) {
    // 可以在这里添加验证逻辑
    age = value;
  }

  void printInfo() {
    print("name: $name, age: $age");
  }
}

class Student extends Person {
  String school;
  Student(this.school, name, age) : super(name, age);
}

void main() {
  printInfo();

  int getNum() {
    return 1;
  }

  print(getNum());
  [1, 2, 3, 4].forEach((int i) => print(i));

  Person p = new Person(
    "zhangsan",
    18,
  );
  p.printInfo();
  print(Person.getGender());
  print(p.getName);

// .. 级联操作
  p
    ..age = 20
    ..printInfo();

  Student s = new Student(
    "school",
    "lisi",
    20,
  );
  s.printInfo();
}
