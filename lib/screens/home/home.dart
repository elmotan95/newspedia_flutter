import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:newspedia_flutter/config/global_styles.dart';
import 'package:newspedia_flutter/screens/home/widgets/news_list_tile_widget.dart';

class Home extends StatefulWidget {

  final wordPair = WordPair.random();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  final _suggestions = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.green, width: 1)
                )
            ),
          ),
          new Expanded(
              child: _buildSuggestions()
          )
        ],
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider(
            height: 0,
          ); //If isOdd show divider

          final index = i ~/ 2; //get index
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); // pagination
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    //check if _saved contain pair word
//    final bool alreadySaved = _saved.contains(pair);

    return new ListTileWidget(
        listTileTitle: pair.asPascalCase,
        listTileSubtitle: pair.asCamelCase,
        listTitleTitleStyle: FONT_18);


//    return ListTile(
//      title: Text(
//        pair.asPascalCase,
//        style: FONT_18,
//      ),
//      subtitle: Text(
//        pair.asCamelCase,
//      ),
//    );
  }
}