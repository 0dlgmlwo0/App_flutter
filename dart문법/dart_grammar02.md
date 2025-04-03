# Dart 기본 문법 정리

## 1. 기본 문법
```dart
void main() {
  print('Hello, Dart!');  // 출력
}
```

## 2. 변수와 자료형
```dart
int num1 = 10;
double num2 = 3.14;
String name = 'Dart';
bool isTrue = true;

var dynamicVar = '변수';  // 자료형 추론
dynamic changeable = 123;  // 자료형 변경 가능
```

## 3. 리스트 & 맵
```dart
List<int> numbers = [1, 2, 3, 4, 5];
Map<String, int> scores = {'철수': 90, '영희': 85};
```

## 4. 함수
```dart
int add(int a, int b) {
  return a + b;
}

// 화살표 함수 (한 줄 함수)
int multiply(int a, int b) => a * b;
```

## 5. 제어문
```dart
if (num1 > 5) {
  print('큰 값');
} else {
  print('작은 값');
}

for (int i = 0; i < 5; i++) {
  print(i);
}

while (num1 > 0) {
  num1--;
}

do {
  num1++;
} while (num1 < 5);
```

## 6. 클래스 & 생성자
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);  // 생성자

  void introduce() {
    print('저는 $name, 나이는 $age살 입니다.');
  }
}

void main() {
  var p = Person('홍길동', 20);
  p.introduce();
}
```

## 7. 비동기 프로그래밍 (Future & async/await)
```dart
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));  // 2초 후 실행
  return '데이터 로드 완료';
}

void main() async {
  print('로딩 중...');
  String data = await fetchData();
  print(data);
}
