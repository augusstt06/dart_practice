# Class

## 1. 클래스 생성

```dart
class Person {
  String name;
  int age;
}
```

- PascalCase 규칙을 따른다.

### 📌 instance

클래스가 객체로 선언된 후, 해당 **객체가 메모리에 할당되어 사용될때** 이 객체를 인스턴스라고 부른다.

- 간단히 말해, 클래스를 사용해 생성된 객체를 인스턴스라고 한다.

### 📌 constructor

constructor는 인스턴스 초기화에 사용되는 메서드이다. 객체 생성시에 호출된다.

```dart
// default constructor
class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}
// Person("Kuku", 2);
```
