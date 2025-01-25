import 'dart:async';

// futureNumber 함수는 3초뒤에 숫자 123을 반환하는 함수의 결과를 저장한다.
Future<int> futureNumber() {
  return Future<int>.delayed(Duration(seconds: 3), () => 123);
}

void Sample() {
  // future 라는 변수에 futureNumber 함수의 결과를 저장한다.
  Future<int> future = futureNumber();

  // then 메서드를 통해 Future<int> 로 부터 반환되는 값을 다룰수 있음.
  future
      .then((value) => {
            print('value: $value'),
          })
      .catchError((err) => {
            print('err: $err'),
          });

  print('waiting...');
}

// async/await
Future<String> hi() async {
  return await Future.delayed(Duration(seconds: 3), () {
    final hi = 'hi';
    print('print in future funtion: $hi');
    return hi;
  });
}

void main() async {
  final future = await hi();
  // hi()의 실행결과가 담긴 future 객체는 Instance of 'Future<String>' 이다.
  print('print in main: $future');
}
