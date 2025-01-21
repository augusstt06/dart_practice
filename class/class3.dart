// static

void main() {
  Employee person1 = Employee('Kuku');
  Employee person2 = Employee('Abe');

  person1.printInfo();
  person2.printInfo();
  Employee.building = 'Apple';
  // 변경시 모든 인스턴스에서 변경된다.
  person1.printInfo();
  person2.printInfo();

  Person person = Person();
  person.Hi();
}

class Employee {
  // 인스턴스에서 같은 값을 가지게 하고 싶다면 static 키워드를 사용한다.
  static String building = 'Google';
  String name;

  Employee(String name) : this.name = name;

  void printInfo() {
    print('My name is $name and I work at $building');
  }
}

/**
 * interface
 * 클래스가 구현하는 메서드와 변수를 정의하는 역할을 한다. => 클래스가 어떤 동작을 할지 정의
 * interface는 클래스가 아니기 때문에 인스턴스를 생성할수 없다.
 *  */

interface class IPerson {
  late String name;

  void Hi() {}
}

class Person implements IPerson {
  @override
  String name = 'kuku';

  @override
  void Hi() {
    print('Hi kuku!');
  }
}
