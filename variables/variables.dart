void variables() {
  // 자료형과 함께 변수 선언
  String kuku = 'Kuku';
  int kukuAge = 2;
  print(kuku);
  print(kukuAge);
  // 타입 추론을 허용하여 변수 선언
  var guessString = 'Kuku2';
  print(guessString);
  // guessString = 1; => 첫번째 선언된 변수가 string으로 추론되므로 이후, 다른 값 할당 X
  var guessInt = 123;
  print(guessInt);
  var guessDouble = 123.456;
  print(guessDouble);
  var guessBool = true;
  print(guessBool);

  /**
   * 단일타입으로 제한되지 않는 변수 선언
   * var와 달리 첫번째로 선언된 변수가 무엇이든 상관없이 다른 값 할당 가능
   * */
  dynamic guessDynamic = 'Kuku3';
  guessDynamic = 123;
  guessDynamic = 123.456;
  guessDynamic = true;
  print(guessDynamic);

  // null을 허용하는 변수 선언
  String? guessNull;
  guessNull = 'Allow Null';
  print(guessNull);

  /**
   * final 키워드로 변수 선언
   * 초기값을 할당 이후 변경 불가 
   * => 런타임에 초기화가 이루어짐
   * 변수 선언과 초기화를 다른 시점에 할당할 수 있음
   */
  final finalString;
  finalString = 'This is Final String';
  print(finalString);

  /**
   * const 키워드로 변수 선언
   * final과 유사하게 초기값을 할당하고 이후 변경 불가
   * => 컴파일 시점에 값이 초기화되므로, 실행전에 결정되어야함.
   * 컴파일 시점에 값이 결정되어야 할 때 사용
   * 선언과 초기화를 다른 시점에 할 수 없음.
   */
  const constString = 'This is Const String';
  print(constString);
}

/**
 * late 키워드로 변수 선언
 * 변수 선언 시 초기값을 할당하지 않고 나중에 할당할 수 있음
 * => 변수 선언과 초기화 시점을 분리하고 싶을때 사용한다.
 */
class lateTest {
  // late 키워드를 사용하여 선언을 먼저하고 나중에 변수 초기화를 한다는 것을 알림
  late String name;

  // setName 메서드를 사용해 name 변수 초기화
  void setName(String newName) {
    name = newName;
  }

/**
 * 만약 setName 메서드를 먼저 호출하지 않고 Hi 메서드를 호출하면 
 * LateInitializationError: Field 'name' has not been initialized. 에러 발생
 * => 변수가 초기화 되기 전에 변수를 사용하려해서 발생하는 에러.
 */
  String Hi() {
    return 'Hi, $name';
  }
}

// typedef
typedef Operation(int x, int y);

void add(int x, int y) {
  print(x + y);
}

void subtract(int x, int y) {
  print(x - y);
}

void operationTest() {
  Operation addOperation = add;
  Operation subtractOperation = subtract;
  addOperation(1, 2);
  subtractOperation(1, 2);
}

void calculator(int x, int y, Operation operation) {
  operation(x, y);
}

typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  lateTest lateTestClass = lateTest();
  lateTestClass.setName('Kuku');
  print(lateTestClass.Hi());
  //
  calculator(1, 2, add);
  calculator(1, 2, subtract);
}
