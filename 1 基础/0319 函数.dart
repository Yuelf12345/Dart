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

/**
   *抽象类
      1、抽象类通过abstract 关键字来定义
      2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。
      3、如果子类继承抽象类必须得实现里面的抽象方法
      4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
      5、抽象类不能被实例化，只有继承它的子类可以
    Iextends抽象类和implements的区别:
      1、如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
      2、如果只是把抽象类当做标准的话我们就用implements实现抽象类
   */
abstract class Animal {
  void eat() {
    print("eat");
  }

  sleep();  // 抽象方法
}

class Cat extends Animal {
  void run() {
    print("run");
  }
  @override
  sleep() {
    // TODO: implement sleep
    print('cat sleep');
  }
}
class Dog extends Animal {
  void run() {
    print("run");
  }
  @override
  sleep() {
    // TODO: implement sleep
    print('dog sleep');
  }
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

  // 抽象类不能被实例化
  // Animal animal = new Animal();
  Cat cat = new Cat();
  cat.eat();
  cat.sleep();
  Dog dog = new Dog();
  dog.eat();
  dog.sleep();
}
