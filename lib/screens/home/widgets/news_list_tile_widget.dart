import 'package:flutter/material.dart';


class ListTileWidget extends StatefulWidget {

  final String listTileTitle;
  final String listTileSubtitle;
  final TextStyle listTitleTitleStyle;

  const ListTileWidget({Key key, this.listTileTitle, this.listTileSubtitle ,this.listTitleTitleStyle}): super(key: key);


  @override
  ListTileWidgetState createState() {
    return new ListTileWidgetState();
  }
}

class ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(
        widget.listTileTitle,
        style: widget.listTitleTitleStyle
      ),
      subtitle: Text(
        widget.listTileSubtitle
      ),
    );
  }
}