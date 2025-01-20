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
