import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'xu',
      home: new HomePage(),
    );
  }

}


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        child: new Scaffold(
          appBar: new AppBar(
            title: _getTitle(),
          ),
          body: ,
          drawer: ,
          bottomNavigationBar: ,
        )
    );
  }

  Widget _getTitle() {
    switch(index) {
      case 0:
        return new Text("电影");
      case 1:
        return new Text("图书");
      case 2:
        return new Text("音乐");
    }
  }

}