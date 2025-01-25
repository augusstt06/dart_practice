# Async

## Future

자바스크립트에서 비동기 처리를 위해 사용하는 Promise와 비슷한 개념이다.

> Promise in JS : 특정 동작의 완료 후 수행되는 콜백함수를 정의하는 객체
>
> Future in Dart : 미래에 완료될 수 있는 작업을 나타내는 객체

```dart
Future<int> futureNumber() {
  return Future<int>.delayed(Duration(seconds: 3), () => 123);
}
```

Future<반환값> 키워드를 사용해, 미래에 해당 반환값을 반환하는 함수를 정의할 수 있다.

Future로 선언한 객체의 반환값은 then 메서드를 통해 다룰 수 있다.

```dart
void main() {
  Future<int> future = futureNumber();

  future
      .then((value) => {
            print('value: $value'),
          })
      .catchError((err) => {
            print('err: $err'),
          });

  print('waiting...');
}
```

이 Future 객체를 조금 더 용이하게 다루기 위해 사용되는 것이 바로 async/await 이다.

## async/await

익숙한 키워드인 async/await은 비동기 로직을 마치 동기적으로 처리할수 있도록 도와준다.
이 키워드를 사용하기 위해서는 2가지의 조건이 필요하다.

> 1. await 키워드를 사용하는 함수는 async 키워드를 사용해 선언해야 한다.
> 2. async 함수는 반드시 Future 객체를 반환해야한다.

await 키워드를 사용하게되면, 해당 키워드가 붙은 코드의 실행이 완료 되기 전까지 잠시 실행을 기다린다.
예시를 통해 이를 확인해보자.

```dart
Future<String> hi() async {
  return await Future.delayed(Duration(seconds: 3), () {
    final hi = 'hi';
    print('print in future funtion: $hi');b
    return hi;
  });
}

void main() {
  final future = hi();
  print('print in main: $future');
}
// print in main: Instance of 'Future<String>'
// print in future funtion: hi
```

예시 코드를 자세히 살펴보면, Future 객체를 반환하는 hi함수는 3초 후에 실행되는 비동기 함수이다.

따라서, main에서 hi를 호출할때 3초뒤에 실행되는 hi의 **반환값을 기다리지 않고** 아래에 적혀있는 print('print in main: $future'); 코드가 먼저 실행된 이후, hi의 반환값이 출력된다.

이번엔 async/await을 사용해보자.

```dart
void main() async {
  final future = await hi();
  print('print in main: $future');
}

// print in future funtion: hi
// print in main: hi
```

print가 실행되는 순서가 바뀔 뿐더러, hi 함수의 반환값 또한 Future<String>에서 hi 라는 문자열로 바뀌었다.

위에서 말했듯, await 키워드를 사용하게 되면 해당 코드의 실행이 완료될때까지 코드 실행을 기다리게 된다.

따라서, hi 함수안의 print가 먼저 출력되고, await 키워드가 Future 객체를 벗겨 String 객체로 반환하여 출력된다.
