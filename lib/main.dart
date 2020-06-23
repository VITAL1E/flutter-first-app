//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';


void main() {
  // WidgetsApp
  // MaterialApp
  // CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aswesome app")
      ),
      body: Container(
        child: Text("Hi flutter"),
      )
    );
  }
}