//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(title: 'flutter-demo', home: new RandomWords());
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//
//  final _saved = new Set<WordPair>();
//
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//
//  void _pushSaved() {
//    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
//      final tiles = _saved.map((pair) {
//        return new ListTile(
//            title: new Text(pair.asPascalCase, style: _biggerFont));
//      });
//      final divided = ListTile.divideTiles(context: context, tiles: tiles)
//          .toList();
//      return new Scaffold(
//        appBar: new AppBar(title: new Text("saved"),),
//        body: new ListView(children: divided,),
//      );
//    }));
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//        itemBuilder: (context, i) {
//          if (i.isOdd) return new Divider();
//          final index = i ~/ 2;
//          if (index >= _suggestions.length) {
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        });
//  }
//
//  Widget _buildRow(WordPair pair) {
//    final alreadySaved = _saved.contains(pair);
//
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(pair);
//          } else {
//            _saved.add(pair);
//          }
//        });
//      },
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("test"),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
//        ],
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // title
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    "1111",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  )),
              new Text(
                "2222",
                style: new TextStyle(color: Colors.grey),
              )
            ],
          )),
          new FavouriteWidget(),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    // button
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    // text
    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        898986498690438609348650932486056809236
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: new ListView(
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}

class FavouriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _FavouriteWidgetState();
  }
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool _isFavourite = true;
  int _count = 41;

  void _toggleState() {
    setState(() {
      if (_isFavourite) {
        _count -= 1;
        _isFavourite = false;
      } else {
        _count += 1;
        _isFavourite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(0.0),
          child: new IconButton(
              icon: (_isFavourite
                  ? new Icon(Icons.star)
                  : new Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleState),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text("$_count"),
          ),
        )
      ],
    );
  }
}
