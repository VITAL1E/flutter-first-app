//import 'package:flutter/widgets.dart';
import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  // WidgetsApp
  // MaterialApp
  // CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ));
  }
}
