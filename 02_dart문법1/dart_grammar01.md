# Dart 문법 정리

## 1. 변수 선언

Dart에서 변수는 `var`, `final`, `const` 키워드를 사용하여 선언할 수 있습니다.

- `var`: 타입을 자동으로 추론합니다.
- `final`: 값을 한 번만 할당할 수 있습니다.
- `const`: 컴파일 타임에 상수로 변수를 할당합니다.

```dart
var name = 'Dart'; // 타입 자동 추론
final age = 30; // 한 번만 값을 할당할 수 있음
const pi = 3.14; // 컴파일 타임 상수

int a = 10;
double b = 20.5;
String name = 'Dart';
bool isTrue = true;
List<int> numbers = [1, 2, 3];
Map<String, int> ages = {'Alice': 25, 'Bob': 30};
Set<String> uniqueNames = {'Alice', 'Bob', 'Alice'};

## 2. 데이터 타입

Dart에서 사용되는 주요 데이터 타입은 다음과 같습니다:

- `int`: 정수
- `double`: 부동 소수점 숫자
- `String`: 문자열
- `bool`: 불리언
- `List`: 배열
- `Map`: 키-값 쌍
- `Set`: 집합

```dart
int a = 10;            // 정수
double b = 20.5;       // 실수
String name = 'Dart';  // 문자열
bool isTrue = true;    // 불리언
List<int> numbers = [1, 2, 3]; // 리스트
Map<String, int> ages = {'Alice': 25, 'Bob': 30}; // 맵
Set<String> uniqueNames = {'Alice', 'Bob', 'Alice'}; // 셋

## 3. 제어문

### 조건문

```dart
if (condition) {
  // 조건이 참일 때 실행
} else {
  // 조건이 거짓일 때 실행
}

switch (variable) {
  case value1:
    // value1일 때 실행
    break;
  case value2:
    // value2일 때 실행
    break;
  default:
    // 위 경우가 아닌 모든 경우 실행
}

###반복문
for (var i = 0; i < 10; i++) {
  print(i);
}

while (condition) {
  // 조건이 참일 동안 실행
}

do {
  // 최소 한 번은 실행
} while (condition);

## 4. 함수
### 익명 함수

익명 함수는 이름이 없는 함수로, 주로 일시적인 작업에 사용됩니다. 변수에 할당하거나 함수 인자로 전달할 수 있습니다.

#### 예시

```dart
var greet = (String name) => print('Hello, $name!');
greet('Dart'); // 출력: Hello, Dart!


### 람다식 (Lambda Expression)

람다식은 익명 함수와 비슷한 개념으로, 주로 짧은 함수를 간결하게 표현할 때 사용됩니다. 람다식은 `=>` 문법을 사용하여 함수 본문을 간단하게 작성할 수 있게 합니다.

#### 예시

```dart
var add = (int a, int b) => a + b;  // 두 숫자의 합을 반환하는 람다식
print(add(5, 3));  // 출력: 8