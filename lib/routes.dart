import 'package:flutter/material.dart';
import 'screens/main/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Main': (BuildContext context) => new Main()
  };

  Routes () {
    runApp(new MaterialApp(
      title: 'Newspedia Flutter',
      routes: routes,
      home: new Main(),
    ));
  }
}