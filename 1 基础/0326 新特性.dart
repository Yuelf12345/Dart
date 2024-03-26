class Person {
  late String? name; // late 延迟初始化
  late int? age;
  // Person(this.name,this.age);
  void show() {
    print("name:$name,age:$age");
  }

  void setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

void main(args) {
  int? a = 10; // ? 可空类型
  a = null;
  print(a);

  void test(int? a) {
    if (a != null) {
      print(a);
    } else {
      print("a is null");
    }
  }

  test(a);

  //
  Person p = new Person();
  p.setInfo("李四", 30);
  p.show();

// required 必传参数
  void test1(a, {required int b, String c = '3'}) {
    print("$a, $b,$c");
  }

  test1(1, b: 2, c: '3');
  test1(1, b: 4);
}
