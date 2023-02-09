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
