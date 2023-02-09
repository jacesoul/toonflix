import 'package:flutter/material.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  var jace = Player(name: "jace");
  jace.name;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter!"),
        ),
        body: Center(
          child: Text("hello world!"),
        ),
      ),
    );
  }
}
