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
  String name;
  int age;

  Person(String name, int age)
      : this.name = name,
        this.age = age;
  void Hi() {
    print('Hi, $name');
  }
}

// Person("Kuku", 2);
```

위 예시 코드가 기본적인 dart에서 사용되는 default constructor이다.
이때, 생성자는 클래스 이름과 동일한 기본생성자로 사용된다.

dart에서는 기본 생성자 이외, named constructor를 사용할 수 있다.

```dart
class LeageOfLegends {
  List<String> member;
  String name, team;

  LeageOfLegends.red()
      : member = ['kuku', 'abe', 'kamen', 'ill', 'via'],
        name = 'commanders',
        team = 'red';
}
```

위 코드는 red라는 이름의 named constructor이다.

클래스를 사용해서 인스턴스를 생성할때, 각각의 인스턴스에 대해 명확하게 구분할 수 있도록 사용된다.
또한 특정 조건에 따라 인스턴스를 다르게 초기화 할 수 있다.
