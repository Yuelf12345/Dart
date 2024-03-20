/*
 * 接口
 */
abstract class A {
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  printA() {
    print('printA');
  }

  @override
  printB() {
    print('printB');
  }
}

/**
 * mixin
 */
mixin C1 {
  void printC1() {
    print('printC1');
  }
}

mixin C2 {
  void printC2() {
    print('printC2');
  }
}

class D with C1, C2 {}

/**
 * 泛型
 */
T getData<T>(T value) {
  return value;
}

class MyList<T> {
  List list = <T>[];
  void add(T value) {
    list.add(value);
  }

  List get() {
    return list;
  }
}

class Pair<K, V> {
  K key;
  V value;

  Pair(this.key, this.value);
}

Pair<String, int> pairExample = Pair<String, int>("key", 42);

void main() {
  D d = new D();
  d.printC1();

  print(getData(100));
  print(getData('hhh'));

  MyList<int> list = new MyList<int>();
  list.add(100);
  print(list.get());

  MyList<String> list1 = new MyList<String>();
  list1.add('hello');
  print(list1.get());
}
