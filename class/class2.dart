class Person {
  String name;
  String country;

  Person(String name, String country)
      : this.name = name,
        this.country = country;

  void Introduce() {
    print('Hi, I am $name from $country');
  }
}

class Student extends Person {
  String school;

  Student(String name, String country, String school)
      : this.school = school,
        super(name, country);

  void Introduce() {
    print('Hi, I am $name from $country and I study at $school');
  }
}

// method overriding
class Parent {
  final int number;
  Parent(int number) : this.number = number;

  int calculate() {
    return this.number * this.number;
  }
}

class Child extends Parent {
  Child(int number) : super(number);
  // 부모 클래스를 상속한 클래스에서 override 데코레이터를 사용하게 되면, 해당 클래스에서 메서드에 대해 덮어쓰기를 할 수 있게 된다.
  @override
  int calculate() {
    // super.calculate를 사용해 부모 클래스의 메서드를 기반으로 추가적인 기능을 구현한다.
    int result = super.calculate();
    return result + result;
  }
}

void main() {
  Person person = Person('Kuku', 'Korea');
  person.Introduce();

  Student student = Student('Kuku', 'Korea', 'Korea University');
  student.Introduce();
}
