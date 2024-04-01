/**
用途：final 关键字可用于声明不可变的变量（包括实例变量、局部变量和静态变量）。
当一个变量被声明为 final 时，它只能被赋值一次。
对于引用类型（如对象），虽然引用本身不能更改，但引用的对象如果是可变类型，其内部状态仍然可以改变。

const 主要用于创建编译时常量，这意味着它们在编译时就必须有确定的值。
被 const 关键字修饰的变量（包括变量和对象）不仅自身不可变，而且它们的值在整个程序生命周期内都不能更改。
可以用来创建编译期就已经知道具体值的字符串、数字、元组、列表、映射和某些特定类型的对象（例如 DateTime 类型，但不能是包含运行时信息的 DateTime.now()）。
 */

void main() {
  final name = 'Alice'; // 基本类型，不可重新赋值
  // final person = Person('Bob'); // 引用类型，person 变量不能再指向其他对象，但 person 内部属性可以改变

  const PI = 3.14159; // 基本类型常量
  const list = [1, 2, 3]; // 编译时常量列表
  // const user = User('ConstUser', age: 30); // 如果User类实现const构造函数，则可以创建编译时常量对象

// identical 用于比较两个对象是否是同一个对象
  const o1 = Object();
  const o2 = Object();
  print(identical(o1, o2)); // false

  var c1 = Container(width: 10, height: 20);
  var c2 = Container(width: 10, height: 20);
  print(identical(c1, c2)); // false

// const 用于创建编译时常量对象 这些实例在编译时就已经知道确切的值，并且在运行时会被优化为单个共享实例，从而提高性能和减少内存占用。
  var c3 = const Container(width: 10, height: 20);
  var c4 = const Container(width: 10, height: 20);
  print(identical(c3, c4)); // true
}

class Container {
  final int width;
  final int height;

  const Container({required this.width, required this.height}); // 构造函数
}
