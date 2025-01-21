void main() {
  Person kuku = Person('Kuku', 2);
  kuku.Hi();
}

class Person {
  String name;
  int age;
  /** 
   *  constructor 생성
   * Person 클래스를 사용할때, name과 age라는 변수를 외부에서 받는다.
   * 이후, 외부에서 받은 이 2개의 변수를 각각 클래스 내부에서 정의한 name, age에 할당한다. 라는 의미의 코드
  */

  Person(String name, int age)
      : this.name = name,
        this.age = age;
  /**
   * 약식 표기시, 
   * Person(this.name, this.age);   
   */

  void Hi() {
    print('Hi, $name');
  }
}

class LeageOfLegends {
  List<String> member;
  String name, team;
  /**
   * 아래 코드가 우리가 아는  일반적인 생성자이다.
   * List<String> member;
   * String name;
   * String team;
   * LeageOfLegends(
   *     {required this.member, required this.name, required this.team});
   * named constructor
   */

  LeageOfLegends.red()
      : member = ['kuku', 'abe', 'kamen', 'ill', 'via'],
        name = 'commanders',
        team = 'red';
}

// getter, setter

class Circle {
  /**
   * private 변수 _radius는 외부에서 접근이 불가능하다.
   * 일반적으로 _ 가 붙은 변수를 private 변수로 사용한다.

   */
  double _radius;

  Circle(this._radius);

  // getter는 _radius라는 private 값을 외부에서도 읽을수 있도록 해준다.(수정은 X, read only) => 무결성 보장
  double get radius => _radius;
}
