
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

---

### 🎯 함수형 프로그래밍

- 일급 객체 지원
- 주요 함수: forEach, where, map, reduce, toList, any 등

```dart
list.where((x) => x % 2 == 0).map((x) => x * 10).toList();
```

---

## ✅ 3장: 프로젝트 구조

- `pubspec.yaml`: 의존성, 리소스 설정
- `StatelessWidget`: 상태 없음
- `StatefulWidget`: 상태 있음, setState 사용

---

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

## ✅ 8장: 널 안전한 코드

```dart
String? name;
name = null;

print(name ?? '기본값');     // null일 경우 대체
print(name?.length);         // null-safe 접근
print(name!.length);         // null 아님 보장
```

- `?` : null 허용
- `!` : null 아님 확신
- `??`, `??=`, `?.` : null-safe 연산자

---


