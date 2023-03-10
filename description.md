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
- const는 컴파일 전에 값을 알고 있다는 뜻이다.
- FutureBuilder에는 builder라는 매개변수가 필요하다. Builder는 UI를 그려주는 함수이다.
- snapshot을 이용하면 Future의 상태를 알수 있다.
- 많은 양의 데이터를 연속적으로 보여주고 싶을 때 Column또는 Row는 적절하지않다. 이럴때에는 ListView라는 것을 쓰는게 좋다.
- ListView는 여러 항목을 나열하는데 최적화된 Widget이다.
- ListView.builder는 사용자가 보고 있는 아이템만 build한다.
- itemBuilder는 ListView.builder가 아이템을 build 할때 호출하는 함수이다.
- 어떤 아이템이 bulid되는지 알수 있는 유일한 방법은 인덱스를 이용하는것 뿐이다.
- ListView.builder는 모든 아이템을 한번에 만드는 대신 만들려는 아이템에 itemBuilder 함수를 실행한다.
- Expanded는 화면의 남는 공간을 차지하는 widget이다.
- GestureDetector는 대부분의 동작을 감지하도록 해준다.
- onTap은 버튼을 탭했을때 발생하는 이벤트이다.
- onTap은 onTabUp과 onTapDown의 조합이다.
- onTapDown은 손가락이 내려왔다는걸 의미하고 onTapUp은 손가락이 들었다는걸 의미한다. 이 이벤트들이 일어났다면 유저가 버튼을 클릭했다는걸 의미한다.
- Navigator.push(context, route);에서 route는 DetailScreen 같은 StatelessWidget을 애니메이션 효과로 감싸서 스크린처럼 보이도록 하겠다는 것이다.
- Navigator.push는 StatelessWidget을 원하지 않는다.
- Navigator.push를 사용하면 애니메이션 효과를 이용해서 유저가 다른 페이지로 왔다고 느끼게 해줄수 있다. 사실 또 다른 StatelessWidget을 렌더링 했을뿐인데 말야.
- MaterialPageRoute는 또 다른 클래스이다. StatelessWidget을 route로 감싸서 다른 스크린처럼 보이게 해준다.
- MaterialPageRoute는 애니메이션을 생성한다.
- 여기서 builder는 route를 만드는 함수이다.
- fullscreenDialog: true로 하면 이미지가 바닥에서 올라온다.
- Hero widget은 화면을 전환할때 굉장히 멋진 애니메이션을 제공해준다.
- Hero widget을 두개의 화면에 각각 사용하고 각각의 위젯에 같은 태그를 주기만 하면 된다.
- StatelessWidget에서 StatefulWidget으로 변환한 유일한 이유는 initState메소드가 필요하기 때문이다. 그래야 getToonById와 getLatestEpisodesById를 사용할수 있다.
- StatefulWidget에서는 State의 build method에서 widget.title이라고 적어줘야한다.
- widget. 이라고 적어야하는 이유는 별개의 class에서 작업하고 있기 때문이다.
- 작성한 코드는 State를 extend하는 class에 있는데 data는 StatefullWidget인 DetailScreen으로 전달이 된다. State class에서 해당 데이터를 받기 위해 widget.id를 통해 참조하고 있다.
- 초기화하고 싶은 property가 있지만 constructor에서는 불가능한 경우 대신 initState 함수에서 초기화하는 것이다. initState가 항상 build보다 먼저 호출되기 때문에 late modifier가 유용하다.
- ListView는 여러 요소를 다루는데 최적화되어 있지만 동시에 구현하기 까다로운 부분이 있다.
- getLatestEpisodesById라는 Future가 에피소드 10개 밖에 return하지 않은 Future이기 때문에 ListView를 사용할 필요가 없다.
- ListView와 ListViewBuilder는 리스트가 엄청 길고 최적화가 엄청 중요할때 사용하면 된다.
- collection for는 List안에서 List를 빌드할수 있도록 해준다.
- **overflow** 문제는 body에서 SingleChildScrollView로 감싸면 된다.
- `flutter pub add url_launcher`
- url_launcher는 http url만 실행하는게 아니라 sms ur이나 telephone url에도 실행할수 있다.
- info.plist는 Flutter가 실행되는 플랫폼의 configuration 파일이다.
- Xcode 파일을 변경했기 때문에 재시작을 해야한다. hot reloading은 dart 코드 변경만 감지한다.
- 참조하는 webtoonId는 하나의 값이기 때문에 {} 괄호는 필요없다. episode.id의 경우에는 중괄호가 필요하다.
- shared_preferences를 사용하면 휴대폰 저장소에 데이터를 담을수 있다.
- `flutter pub add shared_preferences`
- 가장 먼저 휴대폰 저장소와 connection을 만들어야한다.
