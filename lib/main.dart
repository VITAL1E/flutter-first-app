//import 'package:flutter/widgets.dart';
import 'package:example/pages/home_page.dart';
import 'package:example/pages/login_page.dart';
import 'package:example/utils/constants.dart';
import 'package:flutter/material.dart';

import 'pages/home_page_with_fb.dart';
import 'pages/home_page_with_sb.dart';
//import 'package:flutter/cupertino.dart';

Future main() async {
  // WidgetsApp
  // MaterialApp
  // CupertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true ? HomePageSB() : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        HomePage.routeName : (context) => HomePage(),
      },
    ));
  }
}
