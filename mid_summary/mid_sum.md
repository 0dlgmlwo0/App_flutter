
## ✅ 0장: 앱 개발 방식과 플러터 특징

### 📱 앱 개발 방식

| 방식 | 설명 | 대표 기술 |
|------|------|-------------|
| **네이티브 앱** | 플랫폼(Android/iOS) 별로 각각 개발. 성능 최상. | Java/Kotlin (Android), Swift (iOS) |
| **하이브리드 앱** | 웹 기술로 앱을 만들어 WebView에 띄움. 성능 낮음. | Cordova, Ionic |
| **크로스플랫폼 앱** | 하나의 코드로 여러 플랫폼 대응. 생산성 매우 높음. | Flutter, React Native |

### 🌟 플러터 특징

- 구글에서 개발한 프레임워크
- Dart 언어 기반
- Skia 엔진 사용 → 고성능 UI 렌더링
- Hot Reload 지원 → 개발 생산성 향상
- 위젯 기반 구조 → 커스터마이징 유리
- 멀티 플랫폼 지원 (iOS, Android, 웹, 데스크탑)
- 풍부한 생태계와 강력한 커뮤니티

---

## ✅ 1장: 생애 첫 앱 - 환경 구성 검사

- `flutter doctor`: 설치 및 환경 상태 점검
- Android Studio에서는:
  - Terminal 탭에서 실행하거나
  - pubspec.yaml 상단 Flutter doctor 버튼 클릭
- 체크 항목:
  - Flutter SDK, Android SDK, 장치 연결, IDE 설정 상태 등

---

## ✅ 2장: 다트 문법 정리

### 🔤 변수 타입

```dart
int a = 10;
double b = 3.14;
String name = '홍길동';
bool isValid = true;
num x = 10; // int or double
var y = '자동 타입 추론';
dynamic z = 123; // 런타임에 타입 결정
```

---

### 🔒 상수 - final vs const

| 키워드 | 의미 | 결정 시점 |
|--------|------|------------|
| `final` | 한 번만 할당 가능 | 런타임 |
| `const` | 완전 불변 상수 | 컴파일 타임 |

---

### 📏 타입 검사 및 형변환

```dart
if (value is String) print("문자열임");
int age = value as int;
```

---

### 🧩 익명 함수 & 람다식

```dart
list.forEach((item) => print(item));
```

- 함수 자체를 변수처럼 사용할 수 있음

---

### 🧭 선택 매개변수

```dart
void show({String title = '제목'}) {
  print(title);
}
```

---

### 👪 클래스, 상속, 추상 클래스

```dart
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  Student(String name) : super(name);
}

abstract class Animal {
  void speak(); // 구현 없음
}
```



## 1. 상속 (Inheritance)

> 부모 클래스의 기능을 자식 클래스가 물려받는 것

### 📦 예시
```dart
class Animal {
  void eat() {
    print('냠냠');
  }
}

class Dog extends Animal {
  void bark() {
    print('멍멍');
  }
}
```

- `Dog`는 `Animal`의 기능인 `eat()`도 사용할 수 있다.
- 기능을 **그대로 가져와서 재사용** 가능!

---

## 2. 추상화 (Abstraction)

> 공통적인 틀만 정의하고, 실제 내용은 자식 클래스가 직접 구현하도록 강제

### 📦 예시
```dart
abstract class Animal {
  void makeSound(); // 구현 없음
}

class Dog extends Animal {
  void makeSound() {
    print('멍멍');
  }
}
```

- `abstract` 클래스는 인스턴스로 만들 수 없음!
- 자식 클래스는 반드시 `makeSound()`를 구현해야 함

---

## ⚔️ 상속 vs 추상화 비교

| 항목        | 상속                           | 추상화                          |
|-------------|--------------------------------|--------------------------------|
| 목적        | 기능을 **물려받기 위해**       | 공통 틀을 **강제하기 위해**    |
| 기본 클래스 | 일반 클래스                    | `abstract class`               |
| 메서드      | **이미 구현된 기능** 사용 가능 | **구현 없이 선언만** 있음      |
| 자식 클래스 | 필요할 때 오버라이딩 가능       | **반드시 구현**해야 함         |
| 예시        | `extends Animal`               | `extends Animal (abstract)`   |

---

## 🟢 장단점 비교

| 구분     | 상속                                              | 추상화                                             |
|----------|---------------------------------------------------|----------------------------------------------------|
| 🟢 장점 | - 코드 재사용 가능<br>- 기능 추가 없이 바로 사용 가능 | - 코드 일관성 유지<br>- 자식 클래스가 꼭 구현하게 강제 |
| 🔴 단점 | - 자식이 부모에 너무 의존함<br>- 강제성이 없음         | - 기능을 물려주지 않음<br>- 매번 직접 구현해야 함      |

---


---

### 📚 컬렉션

```dart
List<int> list = [1, 2, 3];
Map<String, String> map = {'kr': 'Seoul'};
Set<int> set = {1, 2, 3};
```

# 🧺 Dart 컬렉션 3종 세트 정리

Dart에는 대표적인 컬렉션 타입 3가지가 있어요:

| 컬렉션 종류 | 뜻       | 설명                   |
|-------------|----------|------------------------|
| List        | 리스트   | 순서 있는 데이터 모음  |
| Map         | 맵       | 키-값 쌍의 데이터 구조 |
| Set         | 집합     | 중복 없는 데이터 모음  |

---

## 🟢 1. List (리스트)

> 순서 있는 값들의 묶음. Dart에서 배열도 전부 List라고 불러요.

```dart
List<int> list = [1, 2, 3];
print(list[0]); // 1
```

- 인덱스(0부터 시작)로 요소에 접근
- 중복 가능: `[1, 1, 2]`도 OK
- 순서 보장됨

### ✅ 언제 사용?
- 여러 값을 순서대로 저장하고 싶을 때
- 위치(index)를 기준으로 데이터를 다룰 때

---

## 🟡 2. Map (맵)

> 키(Key)와 값(Value)의 쌍으로 데이터를 저장

```dart
Map<String, String> map = {'kr': 'Seoul', 'jp': 'Tokyo'};
print(map['kr']); // Seoul
```

- 키를 이용해 값을 꺼냄
- 키는 중복 불가, 값은 중복 가능
- 순서 보장 안 됨 (Dart 2.0 이후부터는 일부 보장됨)

### ✅ 언제 사용?
- 데이터에 이름표(키)를 붙여서 저장하고 싶을 때
- 예: 국가 코드와 도시, 사용자 아이디와 이름 등

---

## 🔵 3. Set (셋)

> 중복 없는 값들의 모음. 순서가 중요하지 않을 때 사용.

```dart
Set<int> set = {1, 2, 3, 3};
print(set); // {1, 2, 3}
```

- 중복 자동 제거
- 순서 없음 (정렬되지 않음)

### ✅ 언제 사용?
- 중복 제거할 때
- 특정 값이 존재하는지만 확인하고 싶을 때

---

## 🧠 비교 요약

| 컬렉션 | 키 있음 | 순서 있음 | 중복 허용 | 예시                     |
|--------|---------|-----------|------------|--------------------------|
| List   | ❌       | ✅        | ✅         | `[1, 2, 3]`              |
| Map    | ✅       | ❌        | 키 ❌ 값 ✅ | `{'kr': 'Seoul'}`        |
| Set    | ❌       | ❌        | ❌         | `{1, 2, 3}`              |

---


---

### 🎯 함수형 프로그래밍

- 일급 객체 지원
- 주요 함수: forEach, where, map, reduce, toList, any 등

```dart
list.where((x) => x % 2 == 0).map((x) => x * 10).toList();
```

# 📘 Dart의 함수형 프로그래밍과 주요 함수 정리

## 🧠 함수형 프로그래밍이란?

> 반복문 없이 `함수`를 조합해서 데이터를 처리하는 스타일.  
> Dart는 함수도 변수처럼 다룰 수 있는 **일급 객체**를 지원함!

---

## 🥇 Dart는 일급 객체(First-Class Object)를 지원해

- 함수를 변수처럼 저장할 수 있음
- 함수를 다른 함수에 전달할 수 있음
- 함수를 리턴할 수도 있음

---

## 📦 주요 함수 정리

### 1. `forEach()`

> 리스트의 모든 요소에 대해 뭔가 행동을 하게 함

```dart
var list = [1, 2, 3];
list.forEach((x) {
  print(x);  // 1, 2, 3 출력됨
});
```

---

### 2. `where()`

> 조건에 맞는 요소만 필터링

```dart
var list = [1, 2, 3, 4, 5];
var even = list.where((x) => x % 2 == 0);  
print(even); // (2, 4)
```

---

### 3. `map()`

> 각 요소를 변형해서 새 Iterable을 반환

```dart
var list = [1, 2, 3];
var doubled = list.map((x) => x * 2);
print(doubled); // (2, 4, 6)
```

---

### 4. `toList()`

> Iterable을 List로 변환

```dart
var list = [1, 2, 3];
var newList = list.map((x) => x * 2).toList();
print(newList); // [2, 4, 6]
```

---

### 5. `reduce()`

> 리스트의 요소를 누적해서 하나의 값으로 줄임

```dart
var list = [1, 2, 3, 4];
var sum = list.reduce((a, b) => a + b);
print(sum); // 10
```

---

### 6. `any()`

> 리스트에 조건을 만족하는 요소가 **하나라도 있으면 true**

```dart
var list = [1, 3, 5];
print(list.any((x) => x % 2 == 0)); // false
```

---


## ✨ 한 장 요약

| 함수        | 설명                           | 반환 값       |
|-------------|--------------------------------|---------------|
| `forEach`   | 요소 하나씩 꺼내서 동작 수행   | void          |
| `where`     | 조건에 맞는 요소 필터링        | Iterable      |
| `map`       | 요소 하나하나 변형             | Iterable      |
| `toList`    | Iterable → List로 변환         | List          |
| `reduce`    | 모든 요소를 하나로 합침         | 단일 값       |
| `any`       | 하나라도 조건 맞는지 체크       | true/false    |

---


# 🌟 Dart 컬렉션 if & 컬렉션 for 정리

Dart에서는 List, Set, Map 같은 컬렉션을 만들 때  
조건문 `if`나 반복문 `for`을 **컬렉션 안에서 직접 사용할 수 있어요!**

---

## 🟩 컬렉션 if

> 조건에 따라 원소를 넣을지 말지를 결정할 수 있어요.

### ✅ 예시

```dart
bool addMore = true;

var list = [
  1,
  2,
  if (addMore) 3,
];
print(list); // [1, 2, 3]
```

- `addMore`가 false면 3은 안 들어감 → `[1, 2]`
- true면 → `[1, 2, 3]`

### 🔍 언제 유용해요?

- 조건에 따라 항목을 추가할지 말지 정할 때
- 예: 로그인된 유저만 메뉴 추가할 때 등

---

## 🟦 컬렉션 for

> 다른 리스트를 반복하면서 값을 새로 만들어 넣을 수 있어요.

### ✅ 예시

```dart
var base = [1, 2, 3];
var doubled = [
  for (var x in base) x * 2
];
print(doubled); // [2, 4, 6]
```

- `base`에 있는 숫자들을 2배 해서 새로운 리스트 만들기!

### 🔍 언제 유용해요?

- 기존 리스트를 바탕으로 변형된 새 리스트 만들 때
- `map()` 대신 더 직관적으로 사용할 수 있어요

---

## 🔀 if + for 함께 사용하기

둘을 동시에 사용하는 것도 가능해요!

```dart
var base = [1, 2, 3, 4, 5];
var result = [
  for (var x in base)
    if (x % 2 == 0) x * 10
];
print(result); // [20, 40]
```

- 짝수만 골라서 10배 하기!

---

## 📋 요약

| 문법          | 설명                                      | 예시                          |
|---------------|-------------------------------------------|-------------------------------|
| `if`          | 조건 맞으면 값 추가                       | `if (flag) 'hi'`              |
| `for`         | 반복하며 값 만들어 추가                   | `for (x in list) x * 2`       |
| `if + for`    | 조건 + 반복 동시에                        | `if (x > 0) for (x in list)`  |

---

## ✅ 3장: 프로젝트 구조

- `pubspec.yaml`: 의존성, 리소스 설정
- `StatelessWidget`: 상태 없음
- `StatefulWidget`: 상태 있음, setState 사용

---




## 📦 1. pubspec.yaml

> Flutter 앱의 정보와 설정을 적어두는 중요한 설정 파일입니다.

### ✅ 역할
- 앱 이름, 버전 등 메타데이터
- 외부 패키지(라이브러리) 의존성 추가
- 이미지, 폰트 같은 리소스 등록

### 🧾 예시
```yaml
name: my_app
version: 1.0.0

dependencies:
  flutter:
    sdk: flutter
  http: ^0.14.0

flutter:
  assets:
    - assets/images/
  fonts:
    - family: Nanum
      fonts:
        - asset: assets/fonts/Nanum.ttf
```

### 💡 요약
- 앱에 필요한 **설정과 리소스를 등록**하는 곳
- 외부 패키지를 쓸 때 꼭 여기에 추가해야 함
- 리소스 사용 시 `flutter:` 아래에 경로 등록 필수

---

## 🟨 2. StatelessWidget

> 상태가 없는 정적인 위젯 (한 번 만들어지면 변하지 않음)

### ✅ 특징
- 내부 상태 없음
- UI 고정
- 성능 좋음

### 🧾 예시
```dart
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("안녕!");
  }
}
```

### 💬 쉽게 말하면
"나는 고정된 UI야. 나한텐 변화 같은 거 없어."

---

## 🟦 3. StatefulWidget

> 상태를 가지며, UI가 변경될 수 있는 동적인 위젯

### ✅ 특징
- 내부에 상태(state)를 가짐
- `setState()`로 UI 갱신
- 사용자 상호작용에 따라 화면 변경 가능



## 🧠 Stateless vs Stateful 핵심 비교

| 구분             | StatelessWidget            | StatefulWidget              |
|------------------|----------------------------|-----------------------------|
| 상태(state) 관리 | ❌ 없음                    | ✅ 있음                     |
| 화면 변경 가능성 | ❌ 고정                    | ✅ 변경 가능 (`setState`)   |
| 사용 예시        | 로고, 고정된 텍스트 등     | 버튼, 폼, 체크박스 등 동적 UI |

---

## ✨ 한 줄 요약

- **`pubspec.yaml`**: 앱의 설정과 자원, 패키지 목록이 들어있는 설정 파일
- **`StatelessWidget`**: 상태 없는 고정 화면
- **`StatefulWidget`**: 상태에 따라 바뀌는 동적 화면 (setState 필요)


## ✅ 4장 + 5장: 기본 위젯

### 🧱 레이아웃 위젯

| 위젯 | 설명 |
|------|------|
| `Container` | 사각형 박스 형태로 UI를 구성. 너비/높이/색상/여백 등 설정 가능 |
| `Row` | 자식 위젯들을 가로(수평)로 배치 |
| `Column` | 자식 위젯들을 세로(수직)로 배치 |
| `Stack` | 위젯들을 겹쳐서 배치 (레이어처럼 쌓임) |
| `SingleChildScrollView` | 자식 위젯이 많아 화면을 넘칠 경우 스크롤 가능하게 함 |
| `ListView` | 스크롤 가능한 리스트를 쉽게 구성 |
| `GridView` | 격자 형태로 아이템을 배치 |
| `PageView` | 페이지 형식으로 좌우 슬라이드 전환 가능 |

---

### 📍 정렬, 배치, 공간 제어

| 위젯 | 설명 |
|------|------|
| `Center` | 자식 위젯을 화면 중앙에 배치 |
| `Align` | 자식 위젯을 좌측, 우측, 상단 등 원하는 위치에 배치 |
| `Padding` | 자식 위젯 주변에 안쪽 여백을 줌 |
| `Expanded` | 남는 공간을 자식 위젯이 차지하도록 설정 (Row/Column 안에서 사용) |
| `SizedBox` | 특정 크기의 빈 공간 또는 고정 크기 위젯 |
| `Card` | 그림자, 테두리, 라운드 처리가 된 카드 형태 UI 구성 |

---

### 🔘 버튼 위젯

| 위젯 | 설명 |
|------|------|
| `ElevatedButton` | 가장 일반적인 입체형 버튼. 누르면 위로 솟는 느낌 |
| `TextButton` | 배경 없이 텍스트만 있는 평평한 버튼 |
| `IconButton` | 아이콘을 터치 가능한 버튼으로 사용 |
| `FloatingActionButton` | 화면 하단 오른쪽에 주로 위치하는 둥근 버튼 |

---

### ⌨️ 입력 위젯

| 위젯 | 설명 |
|------|------|
| `TextField` | 텍스트 입력을 위한 입력창 |
| `Checkbox` | 체크박스. true/false 선택 |
| `Switch` | 토글 스위치 |
| `Radio` | 여러 개 중 하나만 선택 가능 |
| `DropdownButton` | 펼침 목록에서 선택할 수 있는 드롭다운 메뉴 |

---

### 💬 다이얼로그 및 선택기

| 위젯 | 설명 |
|------|------|
| `AlertDialog` | 사용자 확인/경고용 팝업 |
| `showDatePicker` | 날짜 선택 팝업 |
| `showTimePicker` | 시간 선택 팝업 |

---

### ✨ 애니메이션 위젯

| 위젯 | 설명 |
|------|------|
| `Hero` | 화면 전환 시 부드럽게 이동하는 애니메이션 효과 |
| `AnimatedContainer` | 색상, 크기, 위치 등의 속성 변화 시 자동 애니메이션 적용 |
| `SliverAppBar` | 스크롤에 따라 숨겨졌다 나타나는 AppBar |
| `SliverList`, `SliverFillRemaining` | SliverAppBar와 함께 동작하는 고급 스크롤 리스트 구성 요소 |

---

### 🍎 Cupertino (iOS 스타일) 위젯

| 위젯 | 설명 |
|------|------|
| `CupertinoButton` | iOS 스타일 버튼 |
| `CupertinoSwitch` | iOS 스타일 스위치 |
| `CupertinoAlertDialog` | iOS 스타일 팝업 다이얼로그 |
| `CupertinoNavigationBar` | iOS 상단 바 |
| `CupertinoPicker` | 스크롤 방식의 선택기 |

---

## ✅ 6장: 내비게이션

```dart
Navigator.push(context, MaterialPageRoute(builder: (_) => SecondPage()));
Navigator.pop(context); // 현재 화면 종료

Navigator.pushNamed(context, '/home'); // 이름 기반 이동
```

- routes 등록 후 `pushNamed`, `pop`으로 이동 제어

---



# 📱 Flutter 내비게이션 정리

Flutter에서 화면 전환은 `Navigator`를 이용하며, 스택 구조를 기반으로 동작합니다.

---

## 1️⃣ 내비게이션의 동작 원리

> Flutter는 **스택(stack)** 구조로 화면을 관리합니다.

- 새로운 화면을 열면(push) 위에 쌓임
- 이전 화면으로 돌아가면(pop) 위에서 제거됨

```text
[Home] → push → [Detail] → pop → [Home]
```

---

## 2️⃣ `push` / `pop` 사용법

### ✅ `Navigator.push()`
새로운 화면으로 이동할 때 사용

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);
```

### ✅ `Navigator.pop()`
현재 화면을 닫고 이전 화면으로 돌아감

```dart
Navigator.pop(context);
```

### ✅ 데이터 주고받기

```dart
// A → B로 이동하면서 결과 기다림
final result = await Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => InputPage()),
);

// B → A로 돌아갈 때 데이터 보내기
Navigator.pop(context, '결과값');
```

---

## 3️⃣ `routes`를 이용한 화면 전환

> `MaterialApp`의 `routes:` 속성에 화면들을 미리 등록해두고  
> 문자열로 이름만 불러서 화면 이동하는 방식

### ✅ 1단계: 등록

```dart
void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      '/second': (context) => SecondPage(),
      '/third': (context) => ThirdPage(),
    },
  ));
}
```

### ✅ 2단계: 이동

```dart
Navigator.pushNamed(context, '/second');
```

### ✅ 3단계: 뒤로가기

```dart
Navigator.pop(context);
```

---

## ⚠️ 강조된 포인트

- `routes:`는 앱 시작 시 전체 구조를 설계하는 부분
- `home:`은 앱의 첫 화면
- Named Route 사용 시 문자열 오타 주의
- 규모가 커질수록 `routes`와 `pushNamed()`가 유지보수에 유리

---

## 📋 요약

| 기능                | 방법                                               |
|---------------------|----------------------------------------------------|
| 새 화면 이동        | `Navigator.push(context, MaterialPageRoute(...))` |
| 화면 닫기           | `Navigator.pop(context)`                          |
| 이름으로 이동       | `Navigator.pushNamed(context, '/route')`          |
| 라우트 등록         | `MaterialApp(routes: { '/route': (ctx) => Page() })` |

---


## ✅ 8장: 널 안전한 코드

Flutter 3부터는 **널(null) 때문에 앱이 터지지 않게** 하기 위해  
**널 안전한 코드**를 **강제**하고 있어요.

---

## 🌪️ null이 뭐야?

> **값이 없음! 비어 있음!**  
예: 이름을 가져오려 했는데 아무 값도 없을 때

```dart
String name = getName(); // 값이 없으면 앱이 터져요 💥
```

---

## ✅ Dart는 이렇게 물어봐요

> "이 변수는 값이 무조건 있어?  
> 아니면 비어있을 수도 있어?"

그래서 그걸 **`?`** 붙여서 표시해야 해요!

---

## 🍐 널 안전 문법 간단 요약

| 문법 | 설명 | 예시 |
|------|------|------|
| `?` | null 허용 타입 | `String? name` |
| `!` | null 아님을 확신 (주의!) | `name!.length` |
| `??` | null이면 기본값 사용 | `name ?? "익명"` |
| `??=` | null일 때만 값 넣기 | `name ??= "초기값"` |
| `?.` | null이면 아무 것도 안 하고 null 반환 | `user?.name` |

---

## 🍭 예제들

```dart
String? name;
print(name); // null

print(name ?? "이름 없음"); // 👉 이름 없음
```

```dart
String? name = "지우";
print(name!.length); // 👉 2 출력 (null이 아니라고 확신할 때만 ! 사용)
```

```dart
String? nickname;
nickname ??= "기본이름";
print(nickname); // 👉 기본이름
```

---

## 🧠 핵심 정리

- null일 수도 있는 변수는 `?`로 표시
- null이 오면 앱이 터지지 않게 대비 필요
- `??`, `??=`, `!`, `?.` 같은 연산자를 사용해서 **안전하게 처리**

---





