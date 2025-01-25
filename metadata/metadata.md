# Metadata

메타데이터란 코드에 대해 부가적인 정보를 제공한다. annotation이라고도 부르며, @ 기호를 통해 사용한다.

## Deprecated

```dart
class Tv {
  @Deprecated('Use turnOn instead')
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('turn on the TV');
  }
}
```

Deprecated 어노테이션은 해당 코드가 더이상 사용되지 않거나, 권장되지 않음을 나타낸다.

간단하게 주석이라고 생각하면 된다.

주로 해당 기능에 대한 대체 기능을 유도하거나, 더이상 사용되지 않는 기능을 알리는 용도로 사용한다.

## Override

```dart
class Animal {
  void makeSound() {
    print('Some sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark');
  }
}

```

override 어노테이션은 클래스에서 살펴보았듯이, 부모 클래스의 메서드를 자식 클래스에서 새롭게 정의하고 사용할수 있도록 한다.
