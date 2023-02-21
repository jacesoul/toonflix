### How to Flutter Works

- flutter 프레임워크가 운영체제와 직접 이야기하지는 않는다. 그 대신에 엔진이 화면 상에 그려준다.
- Unity나 C# 언어로 코드를 짜고 나면 코드를 패키징 한 후 앱스토어로 보낸다.
- 유저가 Unity로 만든 그 앱을 다운로드 받을 때 그 앱이 Unity 코드를 실행시킨다. Flutter도 비슷한 원리로 동작하고 있다.
- 엔진이 프레임워크를 동작시키고 엔진이 그려주는 역할을 수행하게 된다.
- 유저가 앱을 실행시키면 앱은 Flutter 라이브러리를 불러오고 모든 UI를 렌더링 해준다.
- 사람들이 Flutter를 싫어하는 이유중 하나가 네이티브에서 가능한 위젯을 사용할수 없다는 점이다.
- 다른 프레임워크들은 운영체제와 직접 소통하는 방식을 취하고 있다.
- Flutter가 하는건 단순히 엔진을 어플리케이션 내부에 집어넣고 Dart 코드를 컴파일한다.
- 그리고 유저가 MacOS, 윈도우, iOS, 안드로이드 어플리케이션을 실행시킬때 엔진을 가동시키는 "runner" 프로젝트를 실행시킨다.
- 그 이후에 엔진이 모든 UI를 프레임워크와 함께 그려준다.
- Embedder는 특정 플랫폼에 특화된 걸 이야기한다. 여기서 Embedder는 엔진을 가동시키는 "runner" 프로젝트를 가리킨다.
- 그렇기에 ios, 안드로이드, macOS, 윈도우, 리눅스를 위한 다양한 Embedder가 존재한다.
- Embedder의 역할은 호스트 플랫폼 상에서 엔진을 가동시키는 역할을 한다.
- 위젯이나 화면상에 보여지는 모든것들은 flutter 어플리케이션 상의 모든것들은 호스트에 의해 그려진것이 아니고 ios나 안드로이드에 의해 그려진것이 아니라 c나 c++언어로 이우러진 엔진에 의해 그려진다는 것이다.

### Flutter VS React Native

- React Native에선 버튼을 하나 만들면 iOS와 안드로이드에서 서로 다르게 보인다.
- React Native는 자바스크립트를 이용해서 운영체제와 이야기한다.
- Flutter는 컴포넌트를 렌더링하기 위해 운영체제와 직접 소통하지 않는다.
- Flutter와 Dart는 엔진과 이야기를 하고 그 엔진이 UI를 그려준다.

- 호스트 운영체제가 만들어주는 위젯을 사용하는 크로스 플랫폼 어플리케이션을 만들고자 한다면 React Native를 사용하는게 좋다.
- 아주 세밀한 디자인 요구사항이 들어가 있고 요소들이나 애니메이션들을 전부 커스터마이징 해야한다면 Flutter를 사용하는게 좋다.

### Install Flutter

- brew install --cask flutter
- dartpad.dev

### Introduction

- flutter create toonflix
- extenstions
  - dart
  - flutter

### HELLO FLUTTER

- runApp 함수는 void 함수이기 때문에 아무것도 return하지 않는다. 하나의 argument를 필요로 하는데, 바로 Widget이란 타입이다.
- Widget은 레고 블럭이라고 생각해볼수 있다. flutter에 있는 모든건 Widge이기 때문에 레고블럭을 조립한다고 생각하면 된다.
- flutter의 관점에서 Widget은 앱의 UI를 만드는 레고 블럭 같은것이다.
- 프로그래밍 언어의 관점에서 본다면 Widget을 만든다는건 그냥 class를 만드는것이다.
- 모든 Widget은 build 메소드를 구현해야한다.
- build 메소드는 flutter가 실행하게 되는데 build 메소드가 무엇을 return 하던지 그것을 화면에서 보여준다.
- 즉 build 메소드는 Widget의 UI를 만드는것이다.
- StatelessWidget은 기초적인 Widget이고 화면에 뭔가를 띄워주는 역할을 한다.
- Widget이 된다는건 계약을 맺는것이다. 그 계약은 바로 build 메소드를 구현해야한다는 뜻이다.
- Scaffold는 화면의 구성 및 구조에 관한 것들을 가지고 있는 아주 멋진 Widget이다.

### UI Challenge

- Row는 수평, Column은 수직배열을 뜻한다.
- Container는 div와 동일하다 child를 가지고 있는 단순한 box이다.
- Dart는 constant(상수) 개념을 지원한다. constant는 절대 바뀌지 않는 변수이다. 또한 value를 사전에 알수있는 변수이다. 코드를 compile하기 전에 value를 알고 있다.
- 자동으로 const를 설정할수있는 vs code 설정

```
  "editor.codeActionsOnSave": {
  "source.fixAll": true
  }
```

- 부모가 무엇인지 알려주는 멋진 줄이 생기는 vs code 설정

```
  "dart.previewFlutterUiGuides": true,
```

- Code Actions는 코드를 매우 간단한 방법으로 리팩토링 하게 해준다.

```
command + .
```

- Extension Install : **Error Lens**
- 실제로 에러가 무엇인지 알려준다.
- Dart Auto Formatting

```
"editor.defaultFormatter": "Dart-Code.dart-code"
```

- flutter가 좋은 이유는 화면을 통제하기 때문에 원하는 모든 것을 엔진이 제한없이 다 알아서 해준다.
- clipBehavior는 어떤 아이템이 overflow 되었을때 카드와 같은 Container로 하여금 어떻게 동작하게끔 할건지 알려주는 장치이다. clipBehavior를 통해서 나머지 부분을 어떻게 처리할지 설정할수 있다.
- Clip.hardEdge를 사용하면 아이콘의 나머지 부분이 숨겨지게 된다.
- final blackColor가 정의되었으므로 생성자 쪽에 넣어줄 필요가 없다. 아무도 blackColor가 무엇인지에 대해 알려주게 하는게 싫기 때문이다.
- \_blackColor의 의미는 blackColor를 private하게 만들겠다는 의미이다.

### Stateful Widgets

- Stateless Widget은 build 메서드를 통해서 단지 UI를 출력할 뿐이다.
- Stateful Widget은 상태를 가지고 있어서 Stateful이라고 부른다. 즉, 상태에 따라 변하게 될 데이터를 생각할수 있다.
- Stateful Widget은 두개의 부분으로 나뉘어진다. 첫번째 부분은 상태가 없는 위제 그 자체다. 두번째 부분은 위젯 state인데 위젯에 들어갈 데이터와 UI를 넣는 곳이다.
- 멋진점은 데이터가 변경되면 해당 위젯의 UI도 변경이 된다는 점이다.
- Stateful Widget의 데이터는 단지, 클래스 프로퍼티일 뿐이다.
- setState는 State클래스에게 데이터가 변경되었다고 알리는 함수이다. setState를 사용해서 State에게 새로운 데이터가 있다고 말해준다.
- setState 함수를 호출하지 않는다면 build 메서드는 다시 실행되지 않는다. setState는 기본적으로 build 메서드를 한번더 호출하는것이다.
- flutter는 앱의 모든 스타일을 한곳에서 지정할수 있는 기능을 제공한다.
- context에는 위젯 트리에 대한 정보가 담겨있다. 매우 먼 요소의 데이터를 가져올수 있기 때문에 유용하다.
- BuildContext를 사용해서 지금 어떤 위젯이고 누가 부모요소인지 알수있고 맨 위 부모 요소에도 접근할 수 있다.
- InitState는 상태를 초기화 하기 위한 메서드이다. InitState 메서드는 오직 단 한번만 호출된다.
- 종종 부모 요소에 의존하는 데이터를 초기화해야하는 경우가 있다. 가끔 데이터를 초기화하기 위해 context를 사용하게 된다.
- 중요한점은 initState 메서드가 항상 build 메서드보다 먼저 호출되어야한다.
- InitState를 항상 사용할필요는 없다. 대부분의 경우 상태변수를 선언하고 가끔 initState 안에서 변수를 초기화한다.
- dispose 메서드는 위젯 또는 이벤트 리스너 같은 것들이 스크린에서 제거될때 호출되는 메서드이다.
- StatefulWidget은 life cycle을 가지고 있다.
- 다른 지점에서 실행되는 많은 메서드를 가지고 있지만 가장 중요한건 initState, dispose, 그리고 build이다.

### Pomodoro APP

- Pomodoro는 생산성 기술인데 25분동안 일한 뒤 5분 쉬는 것을 말한다.
- Flexible의 역할은 하드 코딩되는 값을 만들게 해준다. 높이가 200 pixel, 너비 100 pixel이 아니라 UI를 비율에 기반해서 더 유연하게 만들 수 있게 해준다.
- Flexible은 하나의 박스가 얼마나 공간을 차지할지 비율을 정할수 있다.
- Timer를 통해 정해진 간격에 한번씩 함수를 실행할 수 있다.
- late modifier는 property를 당장 초기화 하지 않아도 된다는 걸 뜻한다. 하지만 property를 사용하기 전에 반드시 초기화한다고 약속하는 것이다.
- Periodic time은 주기마다 함수를 실행한다.

### WEBTOON APP

- **_App({super.key});_** 에서 key의 의미는 위젯은 ID같은 식별자 역할을 하는 key가 있다는 것이다. Flutter가 위젯을 빠르게 찾을수 있게 한다.
- Scaffold는 screen을 위한 기본적인 레이아웃과 설정을 제공해준다.
- Future은 미래에 받을 값의 타입을 알려준다.
- Dart에게 결과값을 기다리라고 말할땐 await 라는 키워드를 사용한다. await을 사용하고 싶으면 async 함수 내에서 써야한다.
- dynamic타입은 어떤 타입이든 수용할수 있다.
- map은 object처럼 Dart가 지원하는 key-value 데이터 구조인 것을 기억한다.
- fromJson은 매우 많이 쓰이는 패턴이다.
- Future 데이터를 불러와서 보여주는 방법은 2가지가 있다.
