# Class

```dart
class Person {
  String name;
  int age;
}
```

- PascalCase 규칙을 따른다.

## 📌 instance

클래스가 객체로 선언된 후, 해당 **객체가 메모리에 할당되어 사용될때** 이 객체를 인스턴스라고 부른다.

- 간단히 말해, 클래스를 사용해 생성된 객체를 인스턴스라고 한다.

## 📌 constructor

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

## 📌 inheritance

상속은 클래스 간의 관계를 정의하는 방법이다. 상속을 통해 기존 클래스를 확장하여 새로운 클래스를 만들 수 있다.

```dart
class Parent {
  final int number;
  Parent(int number) : this.number = number;
}

// Parent 클래스를 상속한 Child 클래스
class Child extends Parent {
  // super: 부모 클래스를 참조하는 키워드. 생성자, 메서드 등을 호출하거나 접근할때 사용된다.
  Child(int number) : super(number);
}
```

### method overriding

```dart
class Child extends Parent {
  Child(int number) : super(number);
  // 부모 클래스를 상속한 클래스에서 override 데코레이터를 사용하게 되면, 해당 클래스에서 메서드에 대해 덮어쓰기를 할 수 있게 된다.
  @override
  int calculate() {
    // 마찬가지로 super 키워드를 사용해 부모 클래스에서 정의한 메서드를 참조한다.
    int result = super.calculate();
    return result + result;
  }
}
```

**override 데코레이터**를 사용해 부모 클래스의 메서드를 재정의하여 자식 클래스에서 다른 동작을 수행하도록 할 수 있다.
