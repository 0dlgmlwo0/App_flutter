

## 0장: 앱 개발 방식과 플러터 특징

### 📱 앱 개발 방식
- 네이티브 앱: Android(Java/Kotlin), iOS(Objective-C/Swift) 각각 개발
- 하이브리드 앱: 웹 뷰 기반 (성능 낮음)
- 크로스플랫폼 앱: 하나의 코드로 여러 플랫폼 (Flutter, React Native 등)

### 🌟 플러터 특징
- 구글이 개발한 크로스 플랫폼 프레임워크
- Dart 언어 사용
- Skia 엔진 기반의 고성능 렌더링
- 빠른 개발 (Hot Reload), 다양한 위젯
- 사용자 정의 UI 구성 용이
- 활발한 커뮤니티

---

## 1장: 생애 첫 앱 - 환경 구성 검사

- `flutter doctor`: 환경 점검 명령어
- Android Studio → Terminal 탭에서 실행하거나 `pubspec.yaml`에서 Flutter doctor 실행

---

## 2장: 다트 문법 정리

### 🔤 변수 타입
- 기본 타입: `int`, `double`, `String`, `bool`, `num`
- 추론 타입: `var`, 동적 타입: `dynamic`

### 🔒 상수
- `final`: 실행 중 최초 값으로 고정됨
- `const`: 컴파일 시점에 고정됨

### 📏 타입 검사 및 형변환
- `is`, `is!`: 타입 비교
- `as`: 명시적 형변환

### 🧩 익명 함수 / 람다식
```dart
list.forEach((item) => print(item));
```

### 🧭 선택 매개변수
```dart
void func({String name, int age}) {}
```

### 👪 클래스, 상속, 인터페이스
```dart
class A {}
class B extends A {}         // 상속
abstract class C {}          // 인터페이스/추상 클래스
```

- `with`: 믹스인(mixin)
- `implements`: 인터페이스

### 📚 컬렉션
- `List`, `Map`, `Set`
- 컬렉션 if / for

### 🎯 함수형 프로그래밍
- 일급 객체
- `forEach`, `where`, `map`, `reduce`, `toList`

---

## 3장: 프로젝트 및 앱 구조

- `pubspec.yaml`: 의존성 관리, 이미지/폰트 등록
- `StatelessWidget` vs `StatefulWidget` 차이

---

## 4장 + 5장: 기본 위젯 I, II

### 📦 화면 배치 위젯
- `Container`, `Column`, `Row`, `Stack`
- `SingleChildScrollView`, `ListView`, `GridView`, `PageView`

### 📍 정렬, 여백
- `Center`, `Align`, `Padding`, `Expanded`, `SizedBox`, `Card`

### 🔘 버튼
- `ElevatedButton`, `TextButton`, `IconButton`, `FloatingActionButton`

### ⌨️ 입력 위젯
- `TextField`, `Checkbox`, `Switch`, `Radio`, `DropdownButton`

### 💬 다이얼로그
- `AlertDialog`, `DatePicker`, `TimePicker`

### 🔁 이벤트 위젯
- `GestureDetector`, `InkWell`

---

## 6장: 내비게이션

### 🔀 페이지 이동
```dart
Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
Navigator.pop(context);  // 되돌아가기
```

### 💬 데이터 전달/되돌리기
```dart
Navigator.push(... SecondPage(person: person));
Navigator.pop(context, 'OK');  // 값 되돌림
```

### 🗺️ routes 활용
- `MaterialApp`에 경로 정의 후 `pushNamed` 사용

---

## 8장: 널 안전한 코드 (Null Safety)

### ✅ 널 안전성이란?
- 널이 될 수 있는 변수와 아닌 변수 구분 → 런타임 오류 예방

### 📌 문법 요약
```dart
String name;       // null 불가
String? nickname;  // null 가능

nickname?.length    // null이면 실행 X
nickname ?? '기본값' // null이면 기본값 사용
nickname!          // null 아님 보장
```

---


