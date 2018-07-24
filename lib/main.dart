import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'flutter-demo',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("flutter-demo-xu"),
          ),
          body: new Center(
            child: new BackButton(
              color: new Color(0xFFFFF3E0),
            ),
          ),
        ));
  }
}
