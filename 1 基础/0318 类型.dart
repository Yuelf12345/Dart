void main() {
// var 自动推导类型 final(once) const
  var str = "hello world";
  var num = 100;
  final str2;
  str2 = "hhh";
  print(str);
  print(str2);
  print(num);

// 类型定义变量
  String s1 = "hello dart";
  int n1 = 200;
  double d1 = 100.0;
  print(s1);
  print(n1);
  print(d1);

  String s2 = '''
    1
    2
    3
  ''';
  print(s2);
  print("$s1 $s2");

  var arr = <int>[1, 2, 3, 4, 5];
  arr.add(6);
  final arr1 = new List.filled(10, 100); // length fill
  print(arr);
  print(arr1);

  var map = <String, int>{'a': 1, 'b': 2, 'c': 3};
  map['d'] = 4;
  var map1 = new Map();
  map1['a'] = 1;
  print(map);
  print(map1);

  print('hello' is String);

  String price = '100.1';
  if (price.isEmpty) {
    print('empty');
  }
  var numPrice = double.parse(price);
  print(numPrice is double);

  // List 方法
  var list1 = [1, 2, 3, 4, 5];
  list1.addAll([6, 7]);
  list1.remove(1); // value
  list1.removeAt(5); // index
  list1.fillRange(1, 3, 111); // start end value
  var reList = list1.reversed.toList();
  print(reList.join(','));
  print(reList);
}
